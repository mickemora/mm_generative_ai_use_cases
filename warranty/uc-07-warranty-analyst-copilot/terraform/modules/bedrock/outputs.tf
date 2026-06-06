output "knowledge_base_id" {
  description = "Bedrock Knowledge Base ID."
  value       = aws_bedrockagent_knowledge_base.warranty_kb.id
}

output "knowledge_base_arn" {
  description = "Bedrock Knowledge Base ARN."
  value       = aws_bedrockagent_knowledge_base.warranty_kb.arn
}

output "data_source_id" {
  description = "Bedrock Knowledge Base Data Source ID."
  value       = aws_bedrockagent_data_source.warranty_docs.data_source_id
}
