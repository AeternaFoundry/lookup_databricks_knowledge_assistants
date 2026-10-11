output "knowledge_assistants_lookup_knowledge_assistants" {
  description = "Map of knowledge_assistants values across all knowledge_assistants_lookup, keyed the same as var.knowledge_assistants_lookup except keys with no knowledge_assistants are omitted"
  value       = { for k, v in data.databricks_knowledge_assistants.knowledge_assistants_lookup : k => v.knowledge_assistants if v.knowledge_assistants != null && length(v.knowledge_assistants) > 0 }
}
output "knowledge_assistants_lookup_page_size" {
  description = "Map of page_size values across all knowledge_assistants_lookup, keyed the same as var.knowledge_assistants_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_knowledge_assistants.knowledge_assistants_lookup : k => v.page_size if v.page_size != null }
}
output "knowledge_assistants_lookup_provider_config" {
  description = "Map of provider_config values across all knowledge_assistants_lookup, keyed the same as var.knowledge_assistants_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_knowledge_assistants.knowledge_assistants_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}

