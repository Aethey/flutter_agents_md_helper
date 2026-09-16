# Source and Verification Policy

## Source priority

Use the strongest available source in this order:

1. Flutter / Dart official documentation
2. Official package documentation
3. pub.dev package metadata
4. Official GitHub repository, changelog, or release notes
5. Context7
6. Other sources only when primary sources are insufficient

## Facts vs recommendations

Factual fields such as package version, supported features, repository URL, and API availability must be backed by primary sources.

Engineering recommendations such as `recommendedFor`, `advantages`, and `tradeoffs` may summarize documented behavior, but must not be presented as universal rankings.

## Context7 policy

Context7 is not required by default. Set `verification.context7Required` to `true` when:

- primary documentation is incomplete or ambiguous;
- guidance is strongly version-dependent;
- a recent breaking change may invalidate stored guidance;
- package README, API docs, and release notes appear inconsistent;
- the recommendation cannot be justified confidently from primary sources.

Do not use Context7 merely to re-check deterministic metadata such as the latest pub.dev version.

## Update policy

For a routine update:

1. Read `knowledge/index.json`.
2. Select the relevant file only.
3. Check cheap deterministic metadata first.
4. If nothing relevant changed, stop.
5. If it changed, inspect only the necessary documentation/release notes.
6. Use Context7 only if the entry requires extra validation.
7. Validate against the JSON schema.
8. Update `verifiedAt` and the index metadata.

Do not overwrite uncertain facts with model memory. Mark unresolved entries as `needs_review` or `source_conflict` instead.
