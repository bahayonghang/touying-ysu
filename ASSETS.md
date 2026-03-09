# YSU Asset Notes

This repository includes Yanshan University-branded visual assets under `themes/assets/ysu-*`.
This file is the single source of truth for provenance, transformation notes, licensing boundaries,
and Typst Universe reviewer context.

## Files covered by this note

- `themes/assets/ysu-seal.png` — packaged seal graphic used on light backgrounds.
- `themes/assets/ysu-seal-white.png` — white seal variant used on dark backgrounds.
- `themes/assets/ysu-wordmark-only.png` — packaged wordmark-only graphic used on light backgrounds.
- `themes/assets/ysu-wordmark-only-white.png` — white wordmark-only variant used on dark backgrounds.
- `themes/assets/ysu-watermark.png` — low-contrast watermark graphic used as a background element.

## Source materials

- Yanshan University VIS site: <https://vis.ysu.edu.cn/>
- VIS download entry: <https://vis.ysu.edu.cn/download/ysuvi.zip>
- Public university website: <https://www.ysu.edu.cn/>

## Transformation notes

These packaged files are derivative runtime assets prepared for Typst theme use.
The repository keeps only the files required by `themes/ysu-beamer.typ` and does not ship the
full upstream visual identity bundle.

The adjustments made for packaging include:

- isolating the seal and wordmark into theme-ready PNG assets,
- generating white variants for dark-slide usage,
- generating a subdued watermark variant for background placement, and
- sizing/cropping the packaged files to match the theme layout.

## Licensing boundary

- These `ysu-*` files are **not** covered by the SPDX license expression `MIT AND MIT-0` in `typst.toml`.
- The MIT license in this repository covers the theme/library source files that are distributed under `LICENSE`.
- The MIT-0 license in this repository covers the starter content called out in `template/main.typ` and `LICENSE-MIT-0.txt`.
- Institutional names, seals, and wordmarks remain subject to the provenance of the public source materials and to Yanshan University policies; they are not relicensed under MIT or MIT-0 by this repository.

## Typst Universe reviewer note

- The package includes only the theme-required `themes/assets/ysu-*` files so that the published template renders correctly out of the box.
- `ASSETS.md` is intentionally kept as a repository-side review note and is excluded from the package body by `typst.toml`.
- In the Typst Universe PR, mention:
  - why the package contains `themes/assets/ysu-*`,
  - where the source materials came from,
  - what transformations were applied for Typst runtime use, and
  - that downstream reuse of these branded assets is outside the SPDX software-license scope.
- If reviewers require a stricter redistribution basis, the fallback is to replace or remove these branded assets before resubmission.
