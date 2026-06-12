# Expected Policy Mappings

# UC-08 — Claim-to-Policy Matching Assistant

This document provides expected retrieval and policy matching guidance for the synthetic claims dataset.

The mappings in this file are intended for:

- Retrieval validation
- Prompt evaluation
- Grounding verification
- Hallucination testing
- Expected answer comparison

---

# Claim-to-Policy Mapping Reference

## Claim ID: CLM-1001

### Primary Expected Policies

- fuel_system_diagnostic_policy
- claim_documentation_policy

### Key Expected Retrieval Concepts

- Fuel pressure test requirements
- Technician cause statement
- Diagnostic verification
- Required documentation

### Expected Missing Information Checks

- Confirmation that repair resolved concern
- Supporting diagnostic detail completeness

---

## Claim ID: CLM-1002

### Primary Expected Policies

- repeat_repair_policy
- claim_documentation_policy

### Key Expected Retrieval Concepts

- Repeat repair indicators
- Prior repair history review
- Repeat component replacement
- Escalation considerations

### Expected Missing Information Checks

- Why prior repair failed
- Verification of corrective action

---

## Claim ID: CLM-1003

### Primary Expected Policies

- claim_documentation_policy
- labor_time_review_policy

### Key Expected Retrieval Concepts

- Narrative completeness
- Labor hour review
- Missing repair verification
- Diagnostic detail sufficiency

### Expected Missing Information Checks

- Missing repair validation
- Incomplete technician narrative
- Labor justification clarity

---

## Claim ID: CLM-1004

### Primary Expected Policies

- campaign_eligibility_policy

### Key Expected Retrieval Concepts

- Campaign eligibility
- Campaign code validation
- VIN or product eligibility review
- Campaign documentation expectations

### Expected Missing Information Checks

- Eligibility verification
- Supporting campaign documentation
