# 燕山大学 Touying 幻灯片模板

[[English]](./README.md)

这是一个基于 [Touying](https://touying-typ.github.io/touying/zh/) 的燕山大学专用 Typst 幻灯片主题，面向中文学术汇报场景进行了重新设计。

## 特性

- 基于 `Typst 0.14.x` 与 `@preview/touying:0.6.1`
- 使用燕山大学官方公开校名、校徽与蓝色视觉体系
- 提供封面页、目录页、分节页、顶部导航、页脚、进度条与信息块
- 默认适配中文学术汇报、课程展示、组会与答辩预演

## 依赖环境

- Typst `0.14.x`
- `@preview/touying:0.6.1`
- `@preview/cuti:0.2.1`

## 使用 `typst init` 初始化模板

这个模板进入 Typst Universe 之后，可以直接这样初始化：

```powershell
typst init @preview/touying-theme-ysu:0.1.0 my-slides
Set-Location my-slides
typst compile main.typ
```

初始化生成的 `main.typ` 会直接导入：

```typ
#import "@preview/touying-theme-ysu:0.1.0": *
```

在官方包 PR 合并前，如需本地联调，可先按发布后的 `preview` 目录结构准备本地包，再在命令里复用 `--package-path`；具体目录布局见 [`docs/typst-packages-pr-structure.md`](./docs/typst-packages-pr-structure.md)。

## 快速开始

模板发布后，推荐直接按包方式导入：

```typ
#import "@preview/touying-theme-ysu:0.1.0": *

#show: ysu-theme.with(
  config-info(
    title: [报告标题],
    short-title: [短标题],
    subtitle: [副标题],
    author: [姓名],
    institution: [燕山大学\\ 学院名称],
    date: datetime.today(),
  ),
)

#title-slide()
#outline-slide()
```

如果你是直接克隆仓库并在源码树里使用，也可以继续导入主题文件：

```typ
#import "@preview/touying:0.6.1": *
#import "themes/ysu-beamer.typ": *
```

## 编译仓库示例

克隆仓库后，可用下面的命令直接编译内置示例：

```powershell
typst compile --root . examples/beamer-ysu.typ
```

## 目录结构

- `template/main.typ`：`typst init` 使用的模板入口
- `themes/ysu-beamer.typ`：主题主文件
- `themes/assets/`：燕山大学视觉资源与衍生位图

仓库示例源码：
<https://github.com/bahayonghang/touying-theme-ysu/blob/main/examples/beamer-ysu.typ>

## 预览图

| 封面页 | 双栏内容页 |
| --- | --- |
| ![封面页截图](https://raw.githubusercontent.com/bahayonghang/touying-theme-ysu/d19fe7c29f10d1b08a1148d4643c12641fa8ea3b/docs/screenshots/beamer-ysu-cover.png) | ![双栏内容页截图](https://raw.githubusercontent.com/bahayonghang/touying-theme-ysu/d19fe7c29f10d1b08a1148d4643c12641fa8ea3b/docs/screenshots/beamer-ysu-two-column.png) |

![最小示例代码页截图](https://raw.githubusercontent.com/bahayonghang/touying-theme-ysu/d19fe7c29f10d1b08a1148d4643c12641fa8ea3b/docs/screenshots/beamer-ysu-minimal-example.png)

## 使用约定

- 一级标题 `= 标题` 会触发自动分节页
- 二级标题 `== 标题` 会生成普通内容页
- `#title-slide()` 和 `#outline-slide()` 建议手动放在正文前
- `#tblock(title: [...])[...]` 可用于强调信息块

## 视觉资源说明

学校品牌资源的来源链接、转换方式、许可边界与 Typst Universe reviewer note 统一记录在 [`ASSETS.md`](./ASSETS.md)。

## 许可与资源说明

- 主题和库源码按 MIT License 发布。
- 根目录 [`LICENSE`](./LICENSE) 同时保留上游 `QuadnucYard` 与当前作者 `Geekyhang` 的版权声明，用于说明本仓库是在上游工作基础上的 MIT 衍生与扩展实现。
- `template/main.typ` 中的模板起始内容额外按 MIT No Attribution 提供，详见 [`LICENSE-MIT-0.txt`](./LICENSE-MIT-0.txt)。
- `themes/assets/ysu-*` 这类带有学校品牌元素的资源不属于 `typst.toml` 中 SPDX 许可表达式覆盖范围，详见 [`ASSETS.md`](./ASSETS.md) 中的文件清单、来源、转换说明与 reviewer 指引。
- 向 Typst Universe 提交时，应在 reviewer note 里说明包内只保留主题运行所需的 `ysu-*` 资源，并将其来源与再使用边界指向 [`ASSETS.md`](./ASSETS.md)。

## License

Licensed under the [MIT License](LICENSE).
