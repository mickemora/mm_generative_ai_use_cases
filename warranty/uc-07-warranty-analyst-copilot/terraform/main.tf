data "aws_caller_identity" "current" {}

locals {
  name_prefix = "${var.project_name}-${var.environment}"
}

module "s3" {
  source = "./modules/s3"

  name_prefix = local.name_prefix
}

module "opensearch" {
  source = "./modules/opensearch"

  name_prefix = local.name_prefix
}

module "iam" {
  source = "./modules/iam"

  name_prefix                    = local.name_prefix
  warranty_docs_bucket_arn        = module.s3.bucket_arn
  opensearch_collection_arn       = module.opensearch.collection_arn
  embedding_model_arn             = var.embedding_model_arn
}

module "bedrock" {
  source = "./modules/bedrock"

  name_prefix                = local.name_prefix
  knowledge_base_role_arn     = module.iam.bedrock_kb_role_arn
  embedding_model_arn         = var.embedding_model_arn
  opensearch_collection_arn   = module.opensearch.collection_arn
  s3_bucket_arn               = module.s3.bucket_arn

  depends_on = [
    module.iam,
    module.opensearch
  ]
}
