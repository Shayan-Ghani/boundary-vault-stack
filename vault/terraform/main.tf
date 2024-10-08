#------------------------------------------------------------------------------
# The best practice is to use remote state file and encrypt it since your
# state files may contains sensitive data (secrets).
#------------------------------------------------------------------------------

terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "3.24.0"
    }
  }
}

# Use Vault provider
provider "vault" {
  # address = "http://127.0.0.1:8202"

  skip_tls_verify = true

  # auth_login_userpass {
  #   mount = "pass-login"
  #   username = var.users[0]
  #   password = var.passwords[0]
  # }login

  # It is strongly recommended to configure this provider through the
  # environment variables:
  #    - VAULT_ADDR
  #    - VAULT_TOKEN
  #    - VAULT_CACERT
  #    - VAULT_CAPA
  #    - etc.  
}