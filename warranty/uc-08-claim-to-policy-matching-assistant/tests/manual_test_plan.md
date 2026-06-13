# Manual Test Plan

# UC-08 — Claim-to-Policy Matching Assistant

## Purpose

This manual test plan defines baseline validation steps for testing the Claim-to-Policy Matching Assistant during early development.

The goal is to validate whether the assistant can retrieve relevant policy guidance, compare claim information against policy expectations, and generate grounded analyst-oriented outputs.

---

# Scope

This test plan focuses on:

- Retrieval relevance
- Claim-to-policy matching
- Missing documentation detection
- Structured response quality
- Hallucination reduction
- Human-in-the-loop decision support

---

# Test Inputs

Primary test inputs:

```text
sample-data/synthetic_claims.json
sample-data/expected_policy_mappings.md
```

Related policy corpus:

```text
../uc-07-warranty-analyst-copilot/sample-data/policies/
```

---

# Test Execution Steps

## Step 1 — Select a Synthetic Claim

Select one claim from:

```text
synthetic_claims.json
```

Example:

```text
CLM-1001
```

---

## Step 2 — Submit Claim to Retrieval Workflow

Use the claim narrative, technician notes, diagnostic information, and repair action as retrieval input.

Expected result:

- Relevant policy content is retrieved.
- Retrieved context aligns with expected policy mappings.

---

## Step 3 — Run Prompt Template

Use one of the baseline prompts:

- claim_to_policy_comparison_prompt.md
- missing_documentation_detection_prompt.md
- structured_policy_summary_prompt.md
- retrieval_grounding_prompt.md

Expected result:

- Response is structured.
- Response is grounded in retrieved context.
- Response avoids final approval or denial.

---

## Step 4 — Compare Against Expected Mapping

Use:

```text
expected_policy_mappings.md
```

to determine whether the expected policy areas were retrieved and referenced.

---

## Step 5 — Apply Validation Checklist

Use:

```text
prompt_output_validation_checklist.md
```

to evaluate response quality.

---

# Acceptance Criteria

A baseline response is acceptable when:

- Correct policy areas are retrieved.
- Response references relevant policy concepts.
- Missing documentation is identified when appropriate.
- Response clearly frames output as analyst decision support.
- Response does not approve or deny the claim.
- Response does not invent unsupported policy rules.

---

# Initial Manual Test Scenarios

## Scenario 1 — Fuel System Diagnostic Claim

Claim:

```text
CLM-1001
```

Expected policies:

- fuel_system_diagnostic_policy
- claim_documentation_policy

---

## Scenario 2 — Repeat Repair Claim

Claim:

```text
CLM-1002
```

Expected policies:

- repeat_repair_policy
- claim_documentation_policy

---

## Scenario 3 — Labor Review and Weak Documentation Claim

Claim:

```text
CLM-1003
```

Expected policies:

- labor_time_review_policy
- claim_documentation_policy

---

## Scenario 4 — Campaign Eligibility Claim

Claim:

```text
CLM-1004
```

Expected policies:

- campaign_eligibility_policy

---

# Future Automation Candidates

Future automated tests may include:

- Retrieval precision checks
- Expected policy match validation
- Prompt output structure validation
- Hallucination keyword checks
- JSON schema validation
- Regression testing for prompt changes
