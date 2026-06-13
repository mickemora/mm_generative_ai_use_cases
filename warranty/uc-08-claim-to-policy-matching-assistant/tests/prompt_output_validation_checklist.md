# Prompt Output Validation Checklist

# UC-08 — Claim-to-Policy Matching Assistant

## Purpose

This checklist is used to manually evaluate whether generated responses from the Claim-to-Policy Matching Assistant meet expected quality, grounding, and governance standards.

---

# Evaluation Checklist

## 1. Grounding

- [ ] Response uses retrieved policy context.
- [ ] Response avoids unsupported policy interpretations.
- [ ] Response does not invent policy requirements.
- [ ] Response distinguishes retrieved facts from uncertainty.
- [ ] Response identifies when additional policy context may be needed.

---

## 2. Claim-to-Policy Matching

- [ ] Response identifies relevant policy areas.
- [ ] Response explains why the policy appears relevant.
- [ ] Response references policy concepts found in retrieved context.
- [ ] Response avoids overconfident policy conclusions.

---

## 3. Missing Documentation Detection

- [ ] Response identifies missing or weak documentation.
- [ ] Response explains why the missing information matters.
- [ ] Response links missing information to retrieved policy guidance.
- [ ] Response avoids requesting information not supported by policy context.

---

## 4. Analyst Usefulness

- [ ] Response is structured and easy to review.
- [ ] Response highlights analyst review areas.
- [ ] Response is concise enough for operational use.
- [ ] Response supports decision-making without replacing the analyst.

---

## 5. Governance

- [ ] Response does not approve the claim.
- [ ] Response does not deny the claim.
- [ ] Response does not make payment decisions.
- [ ] Response clearly frames output as decision support.
- [ ] Response recommends human review when appropriate.

---

# Suggested Scoring

Use the following scoring scale for each section:

```text
0 = Fails expectation
1 = Partially meets expectation
2 = Fully meets expectation
```

Suggested total score interpretation:

```text
0–4   = Not acceptable
5–7   = Needs improvement
8–10  = Acceptable baseline
11–12 = Strong output
```
