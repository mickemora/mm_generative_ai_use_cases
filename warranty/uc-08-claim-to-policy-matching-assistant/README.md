# UC-08 Claim-to-Policy Matching Assistant

This directory contains the solution design, architecture, prompts, sample data, evaluation assets, and future implementation artifacts for the Claim-to-Policy Matching Assistant use case.

## Objective

Help warranty analysts compare claim details against applicable warranty policies, campaign rules, documentation requirements, and review criteria.

## Business Capability

The assistant should help answer questions such as:

- Which policy appears relevant to this claim?
- What documentation is required?
- Is the claim narrative aligned with the policy requirements?
- What information appears to be missing?
- What should the analyst review before making a decision?

## Design Principle

This use case is intended for decision support only. It should not automatically approve, deny, or adjust warranty claims.

## Planned Architecture

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

## Project Structure

- architecture/ — Architecture diagrams and design notes
- docs/ — Business problem, assumptions, and roadmap
- prompts/ — Prompt templates for policy matching
- sample-data/ — Synthetic claim examples and policy inputs
- evaluation/ — Test cases, expected outputs, and quality checks
- lambda/ — Future Lambda/API implementation
- notebooks/ — Optional experiments and retrieval analysis
- tests/ — Automated or manual validation assets
- terraform/ — Infrastructure extensions or reuse notes

## Relationship to UC-07 Warranty Analyst Copilot

This use case is closely related to UC-07 Warranty Analyst Copilot. It can reuse the same foundational AWS services:

- Amazon S3
- Amazon Bedrock Knowledge Bases
- Amazon OpenSearch Serverless
- IAM
- Future Lambda integration

The Claim-to-Policy Matching Assistant can become a specialized capability inside the broader Warranty Analyst Copilot.
