# Non-Functional Requirements

# UC-08 — Claim-to-Policy Matching Assistant

## Objective

Define the operational, security, governance, scalability, and reliability expectations for the Claim-to-Policy Matching Assistant.

---

# NFR-01 — Security

The solution should:

- Protect sensitive warranty-related information
- Use role-based access controls
- Support least-privilege access principles
- Encrypt data at rest and in transit
- Support secure API access patterns

---

# NFR-02 — Auditability

The system should support:

- Retrieval traceability
- Prompt traceability
- Analyst review traceability
- Logging of system interactions
- Future evaluation workflows

---

# NFR-03 — Grounded Responses

The solution should prioritize grounded responses using retrieved policy content.

The system should attempt to minimize:

- Hallucinations
- Unsupported policy interpretations
- Unverified recommendations

---

# NFR-04 — Scalability

The architecture should support:

- Additional policy documents
- Additional use cases
- Additional retrieval datasets
- Future API expansion
- Future event-driven workflows

---

# NFR-05 — Modularity

Infrastructure and application components should be modular and reusable.

This includes:

- Terraform modules
- Prompt templates
- Lambda functions
- Retrieval workflows
- Evaluation datasets

---

# NFR-06 — Explainability

The solution should provide sufficient visibility into:

- Retrieved policy sources
- Supporting context
- Relevant excerpts
- Structured review observations

---

# NFR-07 — Human Governance

The solution should support human-in-the-loop decision workflows.

The system should not independently:

- Approve claims
- Deny claims
- Override analyst decisions

---

# NFR-08 — Cloud-Native Architecture

The solution should align with AWS-native service patterns where practical.

Current target services include:

- Amazon Bedrock
- Amazon Bedrock Knowledge Bases
- Amazon OpenSearch Serverless
- Amazon S3
- AWS Lambda
- API Gateway
- IAM

---

# NFR-09 — Evaluation Readiness

The solution should support future evaluation capabilities including:

- Retrieval evaluation
- Grounding evaluation
- Hallucination testing
- Prompt testing
- Expected answer comparison
- Human review scoring
