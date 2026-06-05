# Repeat Repair Policy

## Purpose

This sample policy defines guidance for identifying and reviewing repeat repair warranty claims.

This document is synthetic and intended only for development, testing, and demonstration of the Warranty Analyst Copilot knowledge base.

## Definition

A repeat repair occurs when a product, vehicle, or component returns for the same or similar customer concern within a defined review period after a previous repair.

For this sample policy, a repeat repair should be flagged when the same or similar concern occurs within 90 days of a prior related repair.

## Scope

This policy applies to claims involving:

- Same symptom repeated within the review period
- Same component replaced more than once
- Same diagnostic trouble code repeated
- Related system concern after previous repair
- Prior repair that did not resolve the original concern

## Required Review Information

When a repeat repair is suspected, the analyst should review:

1. Current claim narrative
2. Prior claim or repair history
3. Repair date of the previous claim
4. Component replaced in the prior repair
5. Component replaced in the current repair
6. Diagnostic trouble codes from both repairs
7. Whether the customer concern is the same or similar
8. Whether prior repair verification was documented
9. Whether escalation to quality, engineering, or technical support is appropriate

## Analyst Review Guidance

A repeat repair should receive additional review when:

- The same part was replaced in both repairs
- The same customer concern appears in both narratives
- The same diagnostic trouble code appears more than once
- The prior repair occurred within 90 days
- The current repair narrative does not explain why the previous repair failed
- The claim amount is materially higher than comparable claims

## Example Missing Information Flags

The following conditions may require follow-up:

- No explanation of why the concern returned
- No comparison to previous repair history
- No confirmation that the current repair corrected the issue
- No escalation notes for repeated part replacement
- No technician explanation for repeat component failure

## Recommended Analyst Action

If a repeat repair is identified, the analyst should request additional context or route the claim for technical review when appropriate.

The copilot should identify repeat repair indicators, summarize relevant prior history, and recommend human analyst review.
