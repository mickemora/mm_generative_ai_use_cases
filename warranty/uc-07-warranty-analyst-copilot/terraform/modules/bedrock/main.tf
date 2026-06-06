resource "aws_bedrockagent_knowledge_base" "warranty_kb" {
  name     = "${var.name_prefix}-knowledge-base"
  role_arn = var.knowledge_base_role_arn

  knowledge_base_configuration {
    type = "VECTOR"

    vector_knowledge_base_configuration {
      embedding_model_arn = var.embedding_model_arn
    }
  }

  storage_configuration {
    type = "OPENSEARCH_SERVERLESS"

    opensearch_serverless_configuration {
      collection_arn    = var.opensearch_collection_arn
      vector_index_name = "warranty-policy-index"

      field_mapping {
        vector_field   = "vector"
        text_field     = "text"
        metadata_field = "metadata"
      }
    }
  }
}

resource "aws_bedrockagent_data_source" "warranty_docs" {
  knowledge_base_id = aws_bedrockagent_knowledge_base.warranty_kb.id
  name              = "${var.name_prefix}-s3-data-source"

  data_source_configuration {
    type = "S3"

    s3_configuration {
      bucket_arn = var.s3_bucket_arn
    }
  }

  data_deletion_policy = "DELETE"
}
