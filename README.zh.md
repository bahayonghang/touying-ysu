# 燕山大学 Touying 幻灯片模板

[[English]](./README.md)

这是一个基于 [Touying](https://touying-typ.github.io/touying/zh/) 的燕山大学专用 Typst 幻灯片主题，面向中文学术汇报场景进行了重新设计。

## 特性

- 基于 `Typst 0.14.x` 与 `@preview/touying:0.6.1`
- 使用燕山大学官方公开校名、校徽与蓝色视觉体系
- 提供封面页、目录页、分节页、顶部导航、页脚、进度条与信息块
- 默认适配中文学术汇报、课程展示、组会与答辩预演

## 目录结构

- `themes/ysu-beamer.typ`：主题主文件
- `themes/assets/`：燕山大学视觉资源与衍生位图
- `examples/beamer-ysu.typ`：示例演示文稿

## 快速开始

```typ
#import "@preview/touying:0.6.1": *
#import "themes/ysu-beamer.typ": *

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

= 第一部分

== 第一页

正文内容
```

## 编译示例

```powershell
typst compile examples/beamer-ysu.typ
```

## 使用约定

- 一级标题 `= 标题` 会触发自动分节页
- 二级标题 `== 标题` 会生成普通内容页
- `#title-slide()` 和 `#outline-slide()` 建议手动放在正文前
- `#tblock(title: [...])[...]` 可用于强调信息块

## 视觉资源来源

- 燕山大学 VIS 站点：<https://vis.ysu.edu.cn/>
- VIS 下载入口：<https://vis.ysu.edu.cn/download/ysuvi.zip>
- 官网公开图形资源：<https://www.ysu.edu.cn/>

仓库内的位图资源为基于上述公开素材整理出的 Typst 可用版本。

## License

Licensed under the [MIT License](LICENSE).
