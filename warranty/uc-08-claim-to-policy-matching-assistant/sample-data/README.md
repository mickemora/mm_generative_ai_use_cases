# Sample Data

# UC-08 — Claim-to-Policy Matching Assistant

This folder contains synthetic datasets intended to support Retrieval-Augmented Generation (RAG), policy retrieval testing, prompt engineering, evaluation workflows, and claim-to-policy comparison scenarios.

The datasets in this directory are synthetic and intended for:

- Retrieval testing
- Prompt engineering
- Policy matching validation
- Grounded response evaluation
- Hallucination testing
- Structured output validation
- Future API workflow testing

---

# Current Dataset Assets

## 1. synthetic_claims.json

Purpose:

Provide a baseline synthetic warranty claims dataset for:

- Retrieval workflows
- Claim-to-policy comparison
- Missing documentation detection
- Prompt evaluation
- Structured response testing

### Dataset Characteristics

The synthetic claims include examples involving:

- Fuel system diagnostics
- Repeat repairs
- Labor review scenarios
- Campaign-related repairs
- Weak documentation examples

### Example Data Elements

The dataset currently includes:

- Claim ID
- Product model
- Model year
- Symptom descriptions
- Repair actions
- Technician notes
- Diagnostic information
- DTC codes
- Labor hours
- Parts replaced
- Claim amount
- Expected policy mappings

---

## 2. expected_policy_mappings.md

Purpose:

Provide expected retrieval guidance and expected policy relationships for the synthetic claims dataset.

This document is intended to support:

- Retrieval validation
- Prompt evaluation
- Grounding verification
- Hallucination reduction testing
- Expected answer comparison

### Evaluation Areas

The mappings help evaluate:

- Whether the correct policy documents were retrieved
- Whether the prompt identified relevant policy concepts
- Whether missing information was detected correctly
- Whether grounded reasoning behavior was followed

---

# Current Synthetic Policy Coverage

The synthetic claims are currently aligned with the following policy documents:

- fuel_system_diagnostic_policy
- repeat_repair_policy
- labor_time_review_policy
- campaign_eligibility_policy
- claim_documentation_policy

These policy documents currently exist in:

```text
uc-07-warranty-analyst-copilot/sample-data/policies/
```

---

# Strategic Purpose

The sample data in this repository is intended to support development of:

```text
Enterprise RAG Engineering Patterns
```

including:

- Retrieval evaluation
- Policy grounding
- Structured analyst guidance
- Hallucination reduction
- Prompt governance
- Human-in-the-loop review workflows

---

# Future Dataset Expansion

Planned future datasets may include:

- Larger synthetic claim datasets
- Similar claim relationships
- Repeat repair chains
- Fraud/anomaly scenarios
- Supplier-related claim patterns
- Escalation examples
- Multi-policy claim scenarios
- Structured evaluation datasets
- Golden datasets
- Human review scoring examples

---

# Design Principles

All synthetic datasets should:

- Remain company agnostic
- Avoid real customer information
- Avoid production-sensitive data
- Support grounded AI workflows
- Emphasize explainability and retrieval transparency
