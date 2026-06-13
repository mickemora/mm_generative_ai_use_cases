# Tests

# UC-08 — Claim-to-Policy Matching Assistant

This folder contains baseline test assets for validating retrieval behavior, policy grounding, prompt quality, structured outputs, and expected analyst guidance for the Claim-to-Policy Matching Assistant.

The initial testing approach is intentionally lightweight and manual-first. The goal is to establish evaluation discipline before adding automated test harnesses.

---

# Current Test Assets

## 1. retrieval_test_cases.json

Purpose:

Define baseline retrieval test cases for the synthetic claims dataset.

This file maps each synthetic claim to:

- expected policy matches
- expected retrieval concepts
- analyst questions
- pass criteria

It is intended to validate whether the RAG workflow retrieves the correct policy context before prompt generation.

---

## 2. prompt_output_validation_checklist.md

Purpose:

Provide a manual scoring checklist for evaluating generated assistant responses.

Evaluation areas include:

- grounding
- claim-to-policy matching
- missing documentation detection
- analyst usefulness
- governance behavior

This checklist helps verify that the assistant supports decision-making without approving, denying, or adjusting claims.

---

## 3. manual_test_plan.md

Purpose:

Define a simple manual test process for early-stage validation.

The test plan covers:

- selecting synthetic claims
- running retrieval workflows
- applying prompt templates
- comparing results against expected policy mappings
- applying the validation checklist

---

# Testing Philosophy

The testing strategy for this use case emphasizes:

- retrieval relevance
- grounded responses
- hallucination reduction
- explainability
- analyst decision support
- human-in-the-loop governance

The assistant should not be evaluated only on whether it produces a fluent response. It should be evaluated on whether the response is supported, traceable, useful, and appropriately cautious.

---

# Initial Test Scenarios

The initial test set includes scenarios for:

- fuel system diagnostics
- repeat repairs
- labor review concerns
- campaign eligibility
- weak or incomplete documentation

These scenarios align with the synthetic claims dataset located in:

```text
sample-data/synthetic_claims.json
```

and the expected policy mapping reference located in:

```text
sample-data/expected_policy_mappings.md
```

---

# Future Testing Strategies

Future testing strategies may include:

- automated retrieval tests
- JSON schema validation
- prompt regression tests
- hallucination checks
- retrieval precision scoring
- expected answer comparison
- Bedrock Knowledge Base evaluation
- Lambda/API response validation
- human review scoring
- CI/CD integration

---

# Design Principle

Testing should reinforce the core governance principle of this use case:

```text
Decision Support
NOT autonomous claim disposition
```

All test cases should confirm that the assistant helps analysts reason through policy alignment without making final claim decisions.
