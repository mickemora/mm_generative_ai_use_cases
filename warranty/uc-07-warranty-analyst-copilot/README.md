# UC-07 Warranty Analyst Copilot

This directory contains the solution design, architecture, infrastructure, prompts, sample data, and implementation artifacts for the Warranty Analyst Copilot use case.

## Objective

Help warranty analysts review claims faster by combining claim data, repair history, policy guidance, and GenAI-generated decision-support recommendations.

## Planned Architecture

Analyst UI → API Gateway → Bedrock Agent → Lambda Action Groups → Knowledge Base + Business Data → Structured Analyst Brief

## Project Structure

- docs/ — Business and architecture documentation
- terraform/ — Infrastructure as Code
- sample-data/ — Synthetic claim and policy data
- lambda/ — Lambda functions and action groups
- prompts/ — Prompt templates
- architecture/ — Diagrams and design artifacts
- tests/ — Validation and evaluation assets
