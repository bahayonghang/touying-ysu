# Touying Slide Theme for Yanshan University

[[中文]](./README.zh.md)

This repository provides a Yanshan University-themed slide template for [Touying](https://touying-typ.github.io/touying/zh/) and Typst.

## Included files

- `themes/ysu-beamer.typ`: main theme file
- `themes/assets/`: official YSU-inspired visual assets adapted for Typst
- `examples/beamer-ysu.typ`: demo presentation

## Quick start

```typ
#import "@preview/touying:0.6.1": *
#import "themes/ysu-beamer.typ": *

#show: ysu-theme.with(
  config-info(
    title: [Presentation Title],
    author: [Your Name],
    institution: [Yanshan University],
    date: datetime.today(),
  ),
)

#title-slide()
#outline-slide()
```

See `README.zh.md` for the main documentation and `examples/beamer-ysu.typ` for a complete sample.

## License

Licensed under the [MIT License](LICENSE).
