# Design Blueprint

Use this blueprint to create `context/design.md`.
Replace every bracketed prompt with project-specific UI decisions, evidence from approved references, or clearly labeled assumptions.
Do not copy brand names, proprietary tokens, exact colors, type stacks, copy, assets, or distinctive trade dress from previous projects.

## Default UI Direction

Use this direction only when the user selects `Default product-app style` or explicitly asks you to choose the default.
Translate these defaults into the blueprint below with project-specific language.

- Build the first screen as a usable product workspace, not a landing page.
- Prefer a quiet, work-focused app shell: clear navigation, obvious primary workspace, compact toolbars, predictable panels, and restrained decoration.
- Use a neutral base palette with one purposeful accent color, plus semantic success/warning/danger colors. Avoid one-note palettes and do not default to purple-heavy gradients.
- Keep typography readable and utilitarian: system UI stack unless the project already has a brand font, clear hierarchy, no viewport-scaled font sizes, and no negative letter spacing.
- Use an 8px spacing rhythm by default, with denser spacing for operational dashboards and more breathing room for content review or creative tools.
- Keep corners modest: 4-8px for most controls and repeated items; reserve larger radius for dialogs or major surfaces only when it fits the product.
- Prefer borders and subtle surface changes over heavy shadows. Use elevation mainly for overlays, active drag states, menus, and modals.
- Use familiar controls for the job: icon buttons for common tools, tabs for alternate views, menus for option sets, toggles for binary settings, inputs/sliders/steppers for numeric values, and tables/lists for scan-heavy operational data.
- Make responsive behavior explicit: navigation collapse, panel stacking, table/list alternatives, toolbar wrapping, and touch target sizing.
- Add domain-specific rules for the product's actual workflow, especially review gates, generated content, collaboration, sensitive data, or irreversible actions.

## UI Source Handling

Use these rules before filling the blueprint:

- **Reference URLs**: ask for one or more live URLs, use `website-to-design-md`, and write its synthesized output to `context/design.md`. If `website-to-design-md` is unavailable, stop this branch and ask the user to expose it or choose `Default product-app style` or `Custom visual direction`.
- **Inaccessible or missing URLs**: record the limitation as an open question and ask whether to continue with `Default product-app style` or `Custom visual direction`.
- **Default product-app style**: apply `Default UI Direction`, then fill the blueprint with project-specific assumptions.
- **Custom visual direction**: translate the user's direction into tokenized, project-specific UI rules.
- **Reference safety**: do not copy brand names, proprietary assets, exact copy, or distinctive trade dress from reference sites.

```md
---
version: alpha
name: "[Project Name] Design Direction"
source: "[Reference URLs / Default product-app style / Custom visual direction]"
status: "[Confirmed / Assumed / Needs review]"
---

# Design

## Overview

[One paragraph describing the intended product feel, target user context, density, confidence level, and what the interface should help users do quickly.]

## Source and Evidence

- **Selected UI source**: [Reference URLs / Default product-app style / Custom visual direction]
- **Evidence used**: [URLs, screenshots, user preference, domain expectation, or "default app workspace assumptions"]
- **Do not copy**: [Any brand, asset, exact copy, or distinctive visual property that must not be reused]

## Theme Tokens

### Colors

| Token | Value | Role | Notes |
| ----- | ----- | ---- | ----- |
| `background` | [Hex or CSS token] | [Page/app background] | [Usage rule] |
| `surface` | [Hex or CSS token] | [Panels, cards, modals, controls] | [Usage rule] |
| `text` | [Hex or CSS token] | [Primary text] | [Usage rule] |
| `muted-text` | [Hex or CSS token] | [Secondary text] | [Usage rule] |
| `border` | [Hex or CSS token] | [Dividers and control borders] | [Usage rule] |
| `primary` | [Hex or CSS token] | [Primary action/accent] | [Usage rule] |
| `danger` | [Hex or CSS token] | [Destructive actions/errors] | [Usage rule] |
| `success` | [Hex or CSS token] | [Success/ready states] | [Usage rule] |

### Typography

| Role | Font | Size | Weight | Line Height | Notes |
| ---- | ---- | ---- | ------ | ----------- | ----- |
| Page title | [Font stack] | [Size] | [Weight] | [Line height] | [Usage rule] |
| Section heading | [Font stack] | [Size] | [Weight] | [Line height] | [Usage rule] |
| Body | [Font stack] | [Size] | [Weight] | [Line height] | [Usage rule] |
| Label | [Font stack] | [Size] | [Weight] | [Line height] | [Usage rule] |
| Caption | [Font stack] | [Size] | [Weight] | [Line height] | [Usage rule] |

### Spacing and Layout

- **Base grid**: [4px / 8px / other]
- **Page max width**: [Value or "full viewport app shell"]
- **Section rhythm**: [How dense or spacious sections should feel]
- **Control spacing**: [Button, input, toolbar, table, card, or panel spacing rules]
- **Responsive behavior**: [How primary navigation, panels, tables, boards, or canvas surfaces adapt]

### Radius and Shape

| Token | Value | Role |
| ----- | ----- | ---- |
| `radius-sm` | [Value] | [Inputs, small controls, tags] |
| `radius-md` | [Value] | [Buttons, menus, repeated items] |
| `radius-lg` | [Value] | [Modals, panels, major surfaces] |

### Elevation

- [Shadow, border, layering, or flat-depth rule.]
- [When overlays, popovers, dialogs, sticky bars, and toolbars may use elevation.]

## Layout Patterns

- **Primary app shell**: [Navigation, sidebar, topbar, content region, inspector, or full-screen tool layout.]
- **Main workflow screen**: [Expected information hierarchy and action placement.]
- **Detail or edit screen**: [How forms, previews, history, comments, or generated content are arranged.]
- **Empty/loading/error states**: [Tone and structure.]

## Component Conventions

- **Buttons**: [Primary, secondary, destructive, icon-only, disabled, loading, and confirmation rules.]
- **Forms**: [Labels, helper text, validation, grouping, save/cancel behavior.]
- **Lists/tables/cards**: [When to use each and density expectations.]
- **Navigation**: [Persistent areas, active states, breadcrumbs, tabs, command menus.]
- **Modals/popovers**: [When allowed and how actions are placed.]
- **Icons**: [Icon library or style, sizing, stroke, tooltip expectations.]

## Interaction States

- **Hover**: [Visual rule]
- **Focus**: [Accessible focus rule]
- **Selected/current**: [Visual rule]
- **Disabled**: [Visual rule]
- **Loading**: [Visual rule]
- **Error/destructive**: [Visual rule]

## Domain-Specific UI Rules

- [Rule tied to this project's domain, workflow risk, or user expectation.]
- [Rule for generated content, collaboration, review, approvals, data privacy, or irreversible actions.]

## Do's and Don'ts

| Do | Don't |
| -- | ----- |
| [Positive implementation guidance] | [Anti-pattern to avoid] |
| [Positive implementation guidance] | [Anti-pattern to avoid] |

## Open Design Questions

- [Question requiring user review, visual reference, brand decision, or prototype validation.]
```
