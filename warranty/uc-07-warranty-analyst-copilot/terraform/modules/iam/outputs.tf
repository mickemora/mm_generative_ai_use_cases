output "bedrock_kb_role_arn" {
  description = "IAM role ARN for Bedrock Knowledge Base."
  value       = aws_iam_role.bedrock_kb_role.arn
}

output "bedrock_kb_policy_arn" {
  description = "IAM policy ARN for Bedrock Knowledge Base."
  value       = aws_iam_policy.bedrock_kb_policy.arn
}

output "opensearch_data_access_policy_name" {
  description = "OpenSearch Serverless data access policy name."
  value       = aws_opensearchserverless_access_policy.bedrock_kb_data_access.name
}
