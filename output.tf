output "provider_info" {
  description = "Azure provider information."
  value       = { subscription_id = var.connection_info.subscription_id
                  tenant_id       = var.connection_info.tenant_id
                  client_id       = data.vault_azure_access_credentials.creds.client_id
                  client_secret   = data.vault_azure_access_credentials.creds.client_secret }
}

output "subscription_id" {
  description = "Azure subscription id."
  value       = var.connection_info.subscription_id
}

output "tenant_id" {
  description = "Azure tenant id."
  value       =  var.connection_info.tenant_id
}
                 
output "client_id" {
  description = "Azure client id."
  value       =  data.vault_azure_access_credentials.creds.client_id 
}

output "client_secret" {
  description = "Azure client secret."
  value       =  data.vault_azure_access_credentials.creds.client_secret
}

