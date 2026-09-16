# Knowledge Base

This directory is the source of truth for the Flutter architecture knowledge used by **Flutter AGENTS.md Helper**.

## Structure

```text
knowledge/
├── index.json
├── schema/
│   ├── library.schema.json
│   └── index.schema.json
├── libraries/
│   └── <category>/
│       └── <library>.json
└── sources/
    └── source-policy.md
```

## Update flow

1. Read `index.json` first.
2. Open only the category/library files relevant to the task.
3. Check primary sources before changing factual fields.
4. Update only changed fields.
5. Use Context7 only when `verification.context7Required` is `true`, or when primary sources are incomplete, conflicting, or version-sensitive.
6. Validate JSON against the schemas before committing.
7. Update `verifiedAt` and the corresponding index entry.

The goal is targeted retrieval: do not load the whole knowledge base for a single-library update.
