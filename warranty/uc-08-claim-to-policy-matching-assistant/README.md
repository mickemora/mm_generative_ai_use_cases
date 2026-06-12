# UC-08 Claim-to-Policy Matching Assistant

This directory contains the solution design, architecture, prompts, sample data, evaluation assets, and future implementation artifacts for the Claim-to-Policy Matching Assistant use case.

---

# Objective

Help warranty analysts compare claim details against applicable warranty policies, campaign rules, documentation requirements, and review criteria.

The solution is intended to accelerate policy retrieval and improve analyst workflow efficiency using Retrieval-Augmented Generation (RAG) and AWS-native Generative AI services.

---

# Business Capability

The assistant should help answer questions such as:

- Which policy appears relevant to this claim?
- What documentation is required?
- Is the claim narrative aligned with the policy requirements?
- What information appears to be missing?
- What should the analyst review before making a decision?
- Which policy sections influenced the recommendation?
- Where does uncertainty still exist?

---

# Design Principle

This use case is intended for:

```text
Decision Support
NOT autonomous claim approval
```

The solution should:

- Retrieve
- Compare
- Summarize
- Highlight
- Explain
- Recommend areas for review

while keeping final decisions with authorized personnel.

---

# Planned Architecture

```text
Claim Text / Claim Data
        ↓
Policy Retrieval
        ↓
Amazon Bedrock Knowledge Base
        ↓
Retrieved Policy Context
        ↓
LLM-Based Comparison
        ↓
Structured Policy Match Summary
        ↓
Human Analyst Review
```

---

# Current Repository Structure

```text
uc-08-claim-to-policy-matching-assistant/
│
├── README.md
│
├── docs/
│   ├── business_problem_definition.md
│   ├── functional_requirements.md
│   ├── non_functional_requirements.md
│   └── implementation_roadmap.md
│
├── prompts/
│   ├── claim_to_policy_comparison_prompt.md
│   ├── missing_documentation_detection_prompt.md
│   ├── retrieval_grounding_prompt.md
│   ├── structured_policy_summary_prompt.md
│   └── README.md
│
├── sample-data/
│   ├── synthetic_claims.json
│   ├── expected_policy_mappings.md
│   └── README.md
│
├── evaluation/
├── lambda/
├── notebooks/
├── tests/
└── terraform/
```

---

# Current Prompt Engineering Focus

The current prompt strategy emphasizes:

- Grounded responses
- Retrieval-based reasoning
- Structured outputs
- Hallucination reduction
- Retrieval transparency
- Explainability
- Human-in-the-loop workflows

The repository currently includes prompts for:

- Claim-to-policy comparison
- Missing documentation detection
- Structured analyst summaries
- Retrieval grounding enforcement

---

# Current Sample Data Assets

The repository currently includes synthetic claim scenarios involving:

- Fuel system diagnostics
- Repeat repair analysis
- Labor review scenarios
- Campaign-related repairs
- Weak or incomplete documentation examples

The synthetic claims dataset includes:

- Claim narratives
- Technician notes
- Diagnostic information
- DTC codes
- Labor information
- Parts replacement data
- Expected policy mappings

The expected policy mapping reference is intended to support:

- Retrieval validation
- Prompt evaluation
- Hallucination reduction testing
- Grounded response verification
- Expected answer comparison

---

# Strategic Purpose

This use case is intended to strengthen:

- Enterprise RAG engineering discipline
- Policy grounding strategies
- Retrieval evaluation workflows
- Structured analyst guidance generation
- Prompt governance patterns
- Hallucination reduction techniques

The project is intentionally evolving beyond:

```text
Simple AI Chatbot Patterns
```

toward:

```text
Enterprise AI Workflow Patterns
```

---

# Relationship to UC-07 Warranty Analyst Copilot

This use case is closely related to UC-07 Warranty Analyst Copilot and is designed to reuse the same foundational AWS services:

- Amazon S3
- Amazon Bedrock Knowledge Bases
- Amazon OpenSearch Serverless
- IAM
- Future Lambda integration

The Claim-to-Policy Matching Assistant can become a specialized retrieval and reasoning capability inside the broader Warranty Analyst Copilot.

---

# Long-Term Direction

Future planned enhancements may include:

- Similar claim retrieval
- Multi-policy reasoning
- Evaluation datasets
- Golden datasets
- Human feedback loops
- Retrieval observability
- Structured evaluation scoring
- Agentic workflow integration
- Multi-agent orchestration
