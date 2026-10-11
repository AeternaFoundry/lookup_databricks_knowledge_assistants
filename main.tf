data "databricks_knowledge_assistants" "knowledge_assistants_lookup" {
  for_each = var.knowledge_assistants_lookup

  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

