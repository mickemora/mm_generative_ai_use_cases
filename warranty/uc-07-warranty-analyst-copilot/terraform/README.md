# Terraform Infrastructure Readme

This folder contains the Infrastructure as Code implementation for the Warranty Analyst Copilot use case.

## Objective

Provision the AWS resources needed for Phase 2 of the solution:

- Amazon S3 document repository
- Amazon OpenSearch Serverless vector collection
- IAM role and policies for Amazon Bedrock Knowledge Bases
- Amazon Bedrock Knowledge Base
- Amazon Bedrock S3 data source

## Phase 2 Architecture

```text
Warranty Policy Documents
        ↓
Amazon S3
        ↓
Amazon Bedrock Knowledge Base
        ↓
Amazon OpenSearch Serverless
        ↓
Grounded Policy Retrieval
```

## Prerequisites

- Terraform >= 1.6.0
- AWS CLI configured
- AWS provider >= 5.80
- Access to Amazon Bedrock in the selected region
- Access to the selected embedding model

Recommended region:

```text
us-east-1
```

## Setup

Copy the example variables file:

```bash
cp terraform.tfvars.example terraform.tfvars
```

Edit `terraform.tfvars` if needed.

Initialize Terraform:

```bash
terraform init
```

Format files:

```bash
terraform fmt -recursive
```

Validate:

```bash
terraform validate
```

Preview deployment:

```bash
terraform plan
```

Apply:

```bash
terraform apply
```

## After Deployment

Upload policy documents to the generated S3 bucket:

```bash
BUCKET_NAME=$(terraform output -raw s3_bucket_name)
aws s3 sync ../sample-data/policies s3://$BUCKET_NAME/policies/
```

Start Knowledge Base ingestion:

```bash
KB_ID=$(terraform output -raw bedrock_knowledge_base_id)
DS_ID=$(terraform output -raw bedrock_data_source_id)

aws bedrock-agent start-ingestion-job \
  --knowledge-base-id $KB_ID \
  --data-source-id $DS_ID \
  --region us-east-1
```

## Important

Do not commit:

- `.terraform/`
- `terraform.tfstate`
- `terraform.tfvars`
- crash logs
