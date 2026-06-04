variable "aws_region" {
  description = "AWS region for the deployment."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used for naming AWS resources."
  type        = string
  default     = "warranty-analyst-copilot"
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "dev"
}

variable "embedding_model_arn" {
  description = "Embedding model ARN used by Amazon Bedrock Knowledge Base."
  type        = string
  default     = "arn:aws:bedrock:us-east-1::foundation-model/amazon.titan-embed-text-v2:0"
}
