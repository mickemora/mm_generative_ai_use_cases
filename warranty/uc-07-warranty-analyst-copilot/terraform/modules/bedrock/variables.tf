variable "name_prefix" {
  description = "Resource name prefix."
  type        = string
}

variable "knowledge_base_role_arn" {
  description = "IAM role ARN used by Bedrock Knowledge Base."
  type        = string
}

variable "embedding_model_arn" {
  description = "Bedrock embedding model ARN."
  type        = string
}

variable "opensearch_collection_arn" {
  description = "OpenSearch Serverless collection ARN."
  type        = string
}

variable "s3_bucket_arn" {
  description = "S3 bucket ARN used as the Bedrock Knowledge Base data source."
  type        = string
}
