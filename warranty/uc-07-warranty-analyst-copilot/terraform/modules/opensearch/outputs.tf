output "collection_arn" {
  description = "OpenSearch Serverless collection ARN."
  value       = aws_opensearchserverless_collection.kb_collection.arn
}

output "collection_id" {
  description = "OpenSearch Serverless collection ID."
  value       = aws_opensearchserverless_collection.kb_collection.id
}

output "collection_endpoint" {
  description = "OpenSearch Serverless collection endpoint."
  value       = aws_opensearchserverless_collection.kb_collection.collection_endpoint
}
