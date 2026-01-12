# 0001 - Short header lines, 2026-01-12

## Issue

Header lines normally have the form `#!<metachars><whitespace><body>`. What should happen when a header line has no whitespace after the metacharacters (or no metacharacters at all)?

Examples:
- `#!` — just the prefix
- `#!=` — prefix with metacharacter, no whitespace
- `#!#` — prefix with comment metacharacter

## Decision

Short header lines (those lacking trailing whitespace) are treated as having an empty body. This means:

- `#!` → empty string argument
- `#!=` → empty string argument (with `=` metachar active)
- `#!!` → empty string argument (literal mode)
- `#!#` → comment (discarded)

## Rationale

The key principle is: **trailing whitespace must not be significant**.

Consider if we required whitespace for a valid header line. Then:
- `#! ` (with trailing space) would mean empty string argument
- `#!` (no trailing space) would be... invalid? Different?

This creates a dangerous situation where invisible characters change behaviour. An editor might strip trailing whitespace, silently breaking the script. A user might not notice whether there's a trailing space.

By treating the absence of whitespace as equivalent to having whitespace followed by an empty body, we make the behaviour predictable and robust:

```
#!      ← empty string argument
#!      ← empty string argument (even if editor strips trailing space)
```

The same logic applies to lines with metacharacters:
- `#!= ` and `#!=` both mean "empty body with `=` metachar"
- `#!# ` and `#!#` both mean "comment"

This design ensures that scripts behave identically regardless of how editors handle trailing whitespace.
