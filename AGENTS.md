# AGENTS.md

## 1. Project Overview

This repository contains **Flutter AGENTS.md Helper**, a Flutter Web application that helps developers:

1. Describe their Flutter project requirements.
2. Compare relevant architecture and library choices.
3. Understand advantages, trade-offs, and recommended scenarios.
4. Build a coherent Flutter architecture.
5. Export the final decisions as `FLUTTER_ARCHITECTURE.md` for coding agents.

Repository:

https://github.com/Aethey/flutter_agents_md_helper

The product is **not a generic package picker**.

The core flow is:

```text
Project Requirements
        ↓
Engineering Requirements
        ↓
Relevant Technology Options
        ↓
Trade-offs and Recommendations
        ↓
Architecture Decisions
        ↓
FLUTTER_ARCHITECTURE.md
```

The application itself must follow the same Flutter engineering standards that it recommends to users.

---

## 2. Sources of Truth

### 2.1 UI Design

The primary visual reference is:

```text
design/flutter-architect-v2.html
```

Before implementing or significantly modifying UI:

1. Inspect this file first.
2. Preserve its layout hierarchy, proportions, spacing, typography, colors, and interaction intent.
3. Reimplement the design in Flutter.
4. Do not embed the HTML directly.
5. Do not replace the design with default Material styling merely because it is easier.

If implementation details differ from the design, preserve the design intent unless doing so creates a functional or accessibility problem.

### 2.2 Flutter Knowledge

The canonical knowledge base is:

```text
knowledge/
```

Always begin with:

```text
knowledge/index.json
```

Do **not** load the entire knowledge directory by default.

Use the index to locate only the files relevant to the current task.

Example:

```text
Need routing information
        ↓
knowledge/index.json
        ↓
routing
        ↓
navigator.json
go_router.json
auto_route.json
```

Information displayed to users must come from the knowledge base rather than model memory.

### 2.3 Knowledge Schema

Knowledge schemas are stored under:

```text
knowledge/schema/
```

When changing the knowledge structure:

1. Update the schema.
2. Update affected JSON files.
3. Update `knowledge/index.json`.
4. Update Flutter parsing models.
5. Update tests.

Do not silently introduce fields that are unsupported by the schema.

---

## 3. Product Decision Flow

The primary decision flow is defined by:

```text
knowledge/flow/flutter_decision_flow.json
```

The product should ask about **requirements before libraries**.

Do not design the experience as:

```text
[ ] Riverpod
[ ] BLoC
[ ] Dio
[ ] Freezed
[ ] Melos
```

Prefer:

```text
Project Requirements
        ↓
Engineering Requirements
        ↓
Relevant Alternatives
        ↓
Trade-offs
        ↓
Decision
        ↓
Architecture
```

The current flow may include:

- Project Target
- Project Scale
- Project Structure
- Architecture
- State Management
- Routing
- Backend / API
- Models / Serialization
- Persistence
- Native Integration
- Testing
- Static Analysis / Quality
- Monitoring
- Code Generation Review
- Agent Rules
- Final Review

Do not show irrelevant steps.

Conditional requirements should control which decisions appear.

---

## 4. UI Interaction Model

The primary desktop interface uses three panels:

```text
┌────────────────────┬────────────────────────────┬─────────────────────────┐
│ Your Architecture  │ Current Decision           │ Technology Insight      │
│                    │                            │                         │
│ Selected decisions │ Requirement / options      │ Description             │
│ Architecture tree  │                            │ Advantages              │
│ Progress           │                            │ Trade-offs              │
│                    │                            │ Recommended scenarios   │
│                    │                            │ Works well with         │
│                    │                            │ Sources                 │
└────────────────────┴────────────────────────────┴─────────────────────────┘
```

Interaction behavior:

```text
Hover / Focus
→ Preview technology information

Click
→ Select option

Continue
→ Commit decision
→ Update architecture
→ Move to next relevant decision
```

Important:

- Hover must never mutate committed architecture state.
- Preview state and committed state must remain separate.
- Only explicit user selection may commit a decision.

Conceptually:

```text
previewedTechnology
        ≠
selectedTechnology
        ≠
committedDecision
```

---

## 5. Flutter Project Architecture

Use a **feature-first structure with clear responsibility boundaries**.

Recommended structure:

```text
lib/
├── app/
│   ├── app.dart
│   ├── router/
│   └── theme/
│
├── features/
│   ├── wizard/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   │
│   ├── review/
│   │   ├── domain/
│   │   └── presentation/
│   │
│   └── export/
│       ├── domain/
│       └── presentation/
│
├── shared/
│   ├── models/
│   ├── widgets/
│   └── utilities/
│
└── main.dart
```

Rules:

- Prefer clear responsibilities over architecture ceremony.
- Do not create empty layers merely to imitate Clean Architecture.
- Keep domain logic outside Widgets.
- Keep reusable UI separate from feature-specific UI.

---

## 6. Routing

Use:

- `go_router`
- `go_router_builder`

Routes must be typed.

Prefer:

```dart
const ReviewRoute().go(context);
```

Avoid:

```dart
context.go('/review');
Navigator.pushNamed(context, '/review');
```

Rules:

- Do not introduce handwritten route strings when generated typed routes can be used.
- Keep route declarations under `lib/app/router/`.
- Route parameters should use typed values whenever possible.

---

## 7. State Management

Use:

- `flutter_riverpod`
- `riverpod_annotation`
- `riverpod_generator`

Prefer Riverpod annotation/code-generation APIs.

Riverpod should manage application state such as:

- Current decision
- Selected architecture
- Decision history
- Preview state
- Wizard progress
- Generated architecture state

Rules:

- Business logic must not live inside Widgets.
- Widgets should primarily render state and forward user actions.
- Keep local presentation state local when global state is unnecessary.
- Do not introduce BLoC, Provider, GetX, or another state-management framework unless explicitly required.

---

## 8. Models and Serialization

Use:

- `freezed`
- `freezed_annotation`
- `json_serializable`
- `json_annotation`

Use typed immutable models for concepts such as:

- `Technology`
- `KnowledgeSource`
- `Verification`
- `Decision`
- `DecisionOption`
- `DecisionCondition`
- `ArchitectureSelection`
- `ArchitectureState`

JSON should be converted into typed models at the data boundary.

Avoid passing:

```dart
Map<String, dynamic>
```

through the application.

Prefer sealed classes or enums when a value has a bounded set of states.

---

## 9. Type Safety

Strong typing is a project requirement.

Enable:

```yaml
analyzer:
  language:
    strict-casts: true
    strict-inference: true
    strict-raw-types: true
```

Avoid:

- unnecessary `dynamic`
- raw `List`
- raw `Map`
- unchecked casts
- stringly typed identifiers
- handwritten route strings
- duplicated category strings scattered throughout the application

When a concept has a finite set of values, prefer an enum or sealed type.

---

## 10. Code Generation

The project intentionally uses code generation.

Expected generators include:

- `go_router_builder`
- `riverpod_generator`
- `freezed`
- `json_serializable`

Generate code with:

```bash
dart run build_runner build --delete-conflicting-outputs
```

During development:

```bash
dart run build_runner watch --delete-conflicting-outputs
```

Never manually edit:

```text
*.g.dart
*.freezed.dart
```

Fix the annotated source instead.

---

## 11. Static Analysis

Use:

- `flutter_lints`
- `riverpod_lint`
- `custom_lint`

Rules:

- Fix analyzer warnings instead of suppressing them without reason.
- Do not add broad analyzer exclusions merely to make CI pass.
- Generated files may be excluded only where appropriate.

---

## 12. Knowledge Base

`knowledge/` is the repository source of truth.

Preferred runtime pipeline:

```text
knowledge/
    ↓
Schema Validation
    ↓
Build / Compile Step
    ↓
assets/knowledge/
    ↓
Flutter Application
```

Do not maintain two independent copies manually.

If runtime assets are generated from `knowledge/`, generation must be deterministic.

### Updating Knowledge

When modifying knowledge:

1. Read `knowledge/index.json`.
2. Locate only the relevant entries.
3. Check authoritative sources.
4. Update only materially changed data.
5. Update `verifiedAt`.
6. Update index metadata when necessary.
7. Validate changed JSON against the schema.

Source priority:

```text
Flutter / Dart Official Documentation
        ↓
Official Package Documentation
        ↓
pub.dev
        ↓
Official GitHub Repository / Releases / Changelog
        ↓
Context7
        ↓
Other Sources
```

Do not use model memory as the sole source for factual information.

Use Context7 only when:

- primary documentation is ambiguous;
- behavior is strongly version-dependent;
- a breaking change may invalidate existing guidance;
- authoritative sources conflict;
- deeper package-specific validation is required.

Do not use Context7 merely to retrieve simple metadata such as the latest package version.

---

## 13. Facts vs Recommendations

The product must distinguish factual capabilities from engineering recommendations.

Example fact:

```text
go_router supports redirect-based navigation.
```

Example recommendation:

```text
go_router is suitable when authentication redirects are required.
```

Do not present subjective choices as universal facts.

Avoid:

```text
Riverpod is better than BLoC.
go_router is the best Flutter router.
```

Prefer:

```text
Recommended for this project because:

- asynchronous state is significant;
- generated providers are acceptable;
- strict Event → State modeling is not required.
```

Recommendations should always be explainable from project requirements.

---

## 14. Decision Engine

Recommendation logic must be deterministic and testable.

Do not hide decision logic inside Widgets.

Keep decision rules in domain-level code.

Conceptually:

```text
Project Requirements
        +
Technology Characteristics
        +
Decision Rules
        ↓
Relevant Options
        ↓
Recommendation Explanation
```

Prefer explicit explanations over arbitrary numerical scores.

The UI should always be able to explain:

```text
Why is this option shown?
Why is it recommended?
Which user requirements caused this recommendation?
```

---

## 15. Markdown Generation

The main generated artifact is:

```text
FLUTTER_ARCHITECTURE.md
```

It should contain:

- Project characteristics
- Architecture decisions
- Selected packages
- Package relationships
- Coding conventions
- Constraints
- Generated-code rules
- Validation commands
- Agent-specific rules

Generation must be deterministic.

```text
Same Decision State
+
Same Knowledge Version
=
Same Markdown Output
```

Do not call an LLM to generate the final Markdown.

The output should be usable independently by Codex, Claude Code, Cursor, and other coding agents.

---

## 16. Dependencies

Do not add dependencies simply because they are popular.

Before adding a package, verify that:

1. The existing stack does not already solve the problem adequately.
2. The package solves a real requirement.
3. The package is actively maintained.
4. The dependency cost is justified.

The current application does not require:

- an LLM API;
- API keys;
- a backend server;
- remote networking libraries for core functionality.

Do not introduce them unless product requirements change.

---

## 17. GitHub Pages

The application should remain deployable as a static Flutter Web application.

Do not place secrets or API keys inside the Web bundle.

The application must support the project path:

```text
/flutter_agents_md_helper/
```

Build example:

```bash
flutter build web \
  --release \
  --base-href "/flutter_agents_md_helper/"
```

Do not assume deployment at `/`.

---

## 18. Responsive Behavior

Desktop is the primary target for the initial version.

Preferred adaptation:

```text
Desktop
→ Three panels

Tablet
→ Architecture + Decision
→ Insight panel collapsible

Mobile
→ One primary panel at a time
```

Do not compromise the desktop information architecture merely to simplify mobile support.

Responsive layouts must preserve identical decision state and behavior.

---

## 19. Accessibility

Interactive decision cards must support keyboard interaction.

Requirements:

- visible keyboard focus;
- adequate color contrast;
- selection must not depend on color alone;
- hover information must also be accessible through keyboard focus or explicit selection.

---

## 20. Testing

Test behavior that defines the product.

### Unit Tests

Cover:

- Knowledge parsing
- Decision rules
- Conditional flow
- Architecture state
- Markdown generation

Always verify:

```text
Same input → Same Markdown output
```

### Widget Tests

Cover:

- Option selection
- Hover/focus preview
- Continue behavior
- Back behavior
- Architecture panel updates
- Conditional questions
- Review screen

Avoid tests that only verify trivial implementation details.

---

## 21. Required Validation

Before considering an implementation task complete, run:

```bash
dart run build_runner build --delete-conflicting-outputs
flutter analyze
flutter test
flutter build web --release --base-href "/flutter_agents_md_helper/"
```

Do not report completion while one of these commands fails unless the failure is explicitly unrelated to the requested task and documented.

---

## 22. Change Discipline

Keep changes focused on the requested task.

Do not:

- refactor unrelated working code;
- replace established project choices with personal preferences;
- introduce speculative features;
- expand scope without a concrete requirement.

When changing architecture:

1. Identify the requirement requiring the change.
2. Update implementation.
3. Update affected tests.
4. Update documentation when necessary.

When introducing a convention that future coding agents must follow, update this file.

---

## 23. Priority Order

When trade-offs exist, prioritize:

1. Correctness
2. Type safety
3. Clear responsibility boundaries
4. Explainable architecture decisions
5. Maintainability
6. Design fidelity
7. Performance
8. Implementation convenience

Do not sacrifice correctness or type safety merely to reduce code volume.

---

## 24. Core Principle

This project recommends disciplined Flutter architecture.

Its own implementation must demonstrate the same discipline.

Do not merely describe good engineering practices in generated documentation.

Use them in this repository.