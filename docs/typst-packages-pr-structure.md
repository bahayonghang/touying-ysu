# `typst/packages` PR Structure

This note records the release-oriented directory layout and checklist to submit this template to Typst Universe.

## Target path in `typst/packages`

```text
packages/
  preview/
    touying-ysu/
      0.1.0/
```

## Files to submit

```text
packages/
  preview/
    touying-ysu/
      0.1.0/
        README.md
        LICENSE
        LICENSE-MIT-0.txt
        typst.toml
        lib.typ
        thumbnail.png
        template/
          main.typ
        themes/
          ysu-beamer.typ
          assets/
            ysu-seal.png
            ysu-seal-white.png
            ysu-watermark.png
            ysu-wordmark-only.png
            ysu-wordmark-only-white.png
```

## Repository-side notes not included in the package body

```text
README.zh.md
ASSETS.md
docs/
examples/
```

These files remain useful during submission review, but they stay outside the published package body.
The `exclude` section in `typst.toml` should continue to keep them out of the packaged release.

## Local preview testing

1. Create a local package root.
2. Mirror the `packages/preview/touying-ysu/0.1.0/` layout under that root.
3. Copy the release files listed above into the local preview package directory.
4. Run:

```powershell
typst init --package-path <local-package-root> @preview/touying-ysu:0.1.0 <target-dir>
typst compile --package-path <local-package-root> <target-dir>\main.typ
```

## Submission notes

- Keep the submitted package minimal and release-focused.
- If any published file changes after submission, bump the package version before sending a new PR.
- Keep the current package name only if you are prepared to justify it to reviewers as a continuity choice for an existing repository and template identity.
- `lib.typ` remains the package entrypoint.
- `template/main.typ` is used by `typst init`.
- `thumbnail.png` is the package preview image and must not be referenced by package files.
- The package keeps only the runtime-required `themes/assets/ysu-*` files; the detailed provenance, transformations, and reuse boundary are documented in repository-side `ASSETS.md`.
- In the Typst Universe PR, include a short reviewer note that covers:
  - `LICENSE` preserves the upstream QuadnucYard notice and the current Geekyhang notice for the MIT-licensed source files in this adapted repository;
  - `template/main.typ` starter content is additionally available under MIT-0 via `LICENSE-MIT-0.txt`;
  - `themes/assets/ysu-*` come from public Yanshan University visual materials, were converted into theme-ready PNG derivatives, and are outside the SPDX software-license scope; and
  - README screenshots use stable external raw GitHub URLs so preview images are documented without being bundled into the package body.
- If you cannot justify redistribution of the branded assets to reviewers, stop and replace/remove those assets before submission.
