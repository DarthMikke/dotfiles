---
name: git-commit
description: Use when the user asks to commit, save, or record the agent's changes in git, or when wrapping up work that should be committed.
---

# Git Commit

Commit the agent's changes with a structured commit message.

## Procedure

1. Inspect the working tree: `git status`, `git diff`, `git log --oneline -5`.
   - If there are no changes, stop and tell the user — never create an empty commit.
2. Stage only the files the agent created or modified in this session:
   `git add <files>`. Do NOT stage unrelated files the user may have edited.
   - Never stage secrets, credentials, or files that look accidental.
3. Write the commit message in two parts:

   **Title (first line):**
   - Prefix with `Opencode: ` followed by a concise imperative summary of what
     was done, e.g. `Opencode: add retry logic to login flow`.
   - Keep under ~72 characters; base it on the actual diff, not the task name.

   **Body (after a blank line):**
   - Collect all user prompts given since the last commit.
   - If the full set of prompts is concise (roughly under ~200 chars total),
     include them verbatim as the body.
   - Otherwise, write a summary of the conversation since the last commit:
     what was requested, what was changed, notable decisions or tradeoffs.
4. Commit: `git commit -m "Opencode: <summary>" -m "<body>"`
   (use a heredoc with `-F -` for multi-line bodies).
5. Show the resulting `git log -1 --stat` to the user.

## Rules

- Never amend, push, or force-push unless explicitly asked.
- If commit hooks fail, report the failure; do not amend or retry blindly.