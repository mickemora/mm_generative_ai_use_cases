output "s3_bucket_name" {
  description = "S3 bucket used for warranty policy documents."
  value       = module.s3.bucket_name
}

output "s3_bucket_arn" {
  description = "S3 bucket ARN."
  value       = module.s3.bucket_arn
}

output "opensearch_collection_arn" {
  description = "OpenSearch Serverless collection ARN."
  value       = module.opensearch.collection_arn
}

output "opensearch_collection_endpoint" {
  description = "OpenSearch Serverless collection endpoint."
  value       = module.opensearch.collection_endpoint
}

output "bedrock_knowledge_base_id" {
  description = "Amazon Bedrock Knowledge Base ID."
  value       = module.bedrock.knowledge_base_id
}

output "bedrock_data_source_id" {
  description = "Amazon Bedrock Knowledge Base data source ID."
  value       = module.bedrock.data_source_id
}

output "bedrock_kb_role_arn" {
  description = "IAM role ARN used by Bedrock Knowledge Base."
  value       = module.iam.bedrock_kb_role_arn
}
