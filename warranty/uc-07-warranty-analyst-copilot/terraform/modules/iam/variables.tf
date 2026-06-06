variable "name_prefix" {
  description = "Resource name prefix."
  type        = string
}

variable "warranty_docs_bucket_arn" {
  description = "S3 bucket ARN containing warranty documents."
  type        = string
}

variable "opensearch_collection_arn" {
  description = "OpenSearch Serverless collection ARN."
  type        = string
}

variable "embedding_model_arn" {
  description = "Bedrock embedding model ARN."
  type        = string
}
