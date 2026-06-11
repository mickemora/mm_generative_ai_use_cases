# Prompts

# UC-08 — Claim-to-Policy Matching Assistant

This folder contains reusable prompts intended to support Retrieval-Augmented Generation (RAG) workflows for the Claim-to-Policy Matching Assistant use case.

The prompts in this directory are designed to help:

- Compare warranty claims against retrieved policy guidance
- Identify potentially missing documentation
- Generate grounded analyst summaries
- Improve retrieval transparency
- Reduce hallucinations
- Support human-in-the-loop review workflows

---

# Prompt Engineering Strategy

The prompt strategy for this use case emphasizes:

- Grounded responses
- Retrieval-based reasoning
- Structured outputs
- Retrieval transparency
- Hallucination reduction
- Explainability
- Analyst decision support
- Confidence framing

The prompts are intentionally designed for:

```text
Decision Support
NOT autonomous claim approval
```

---

# Current Prompt Library

## 1. claim_to_policy_comparison_prompt.md

Purpose:

Compare claim information against retrieved policy guidance.

Primary capabilities:

- Policy comparison
- Relevant policy observations
- Missing information indicators
- Review considerations
- Referenced policy sections

Typical workflow:

```text
Claim Input
    ↓
Retrieved Policy Context
    ↓
Structured Policy Comparison
```

---

## 2. missing_documentation_detection_prompt.md

Purpose:

Identify potentially missing or incomplete claim documentation.

Primary capabilities:

- Missing diagnostic evidence detection
- Weak narrative detection
- Missing technician observations
- Missing repair validation details
- Policy-required information checks

This prompt is expected to become reusable for future:

- Dealer Narrative Quality Checker
- Claim Review Assistant
- Warranty Analyst Copilot workflows

---

## 3. structured_policy_summary_prompt.md

Purpose:

Generate concise analyst-oriented policy review summaries.

Primary capabilities:

- Claim overview generation
- Policy summarization
- Structured review observations
- Referenced policy guidance summaries
- Confidence observations

This prompt is intended to support:

- Analyst dashboards
- API responses
- Copilot interfaces
- Human review workflows

---

## 4. retrieval_grounding_prompt.md

Purpose:

Enforce grounded responses using retrieved policy context.

This is one of the most strategically important prompts in the repository because it establishes explicit grounding behavior.

Core grounding rules include:

- Use only retrieved policy context
- Avoid unsupported recommendations
- Avoid invented policy guidance
- Clearly identify uncertainty
- Request additional retrieval when needed

This prompt is foundational for:

- Hallucination reduction
- Enterprise RAG discipline
- Retrieval explainability
- Retrieval transparency

---

# Future Prompt Categories

Planned future prompt categories may include:

- Similar claim comparison
- Repeat repair analysis
- Coverage eligibility guidance
- Labor review analysis
- Fraud / anomaly explanation
- Root cause hypothesis generation
- Structured analyst brief generation
- Multi-agent orchestration prompts

---

# Design Principles

All prompts in this repository should:

- Prioritize grounded responses
- Avoid unsupported conclusions
- Encourage retrieval transparency
- Clearly identify uncertainty
- Support analyst review workflows
- Maintain professional and explainable outputs

---

# Long-Term Direction

The long-term direction for this prompt library is to evolve from:

```text
Single Prompt Templates
```

into:

```text
Enterprise Prompt Engineering Patterns
```

including:

- Reusable RAG prompt frameworks
- Structured output patterns
- Evaluation-aware prompts
- Multi-step reasoning workflows
- Agentic workflow prompts
- Prompt governance patterns
- Hallucination reduction strategies
