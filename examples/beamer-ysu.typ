#import "@preview/touying:0.6.1": *
#import "/themes/ysu-beamer.typ": *

#show: ysu-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: [燕山大学 Touying 演示模板],
    short-title: [YSU Touying 模板],
    subtitle: [面向中文学术汇报的新版 Typst 幻灯片主题],
    author: [张三],
    date: datetime.today(),
    institution: [燕山大学\ 信息科学与工程学院],
  ),
)

#title-slide(
  extra: [适用于课程汇报、组会、开题、中期检查与学术报告。],
)

#outline-slide()

= 模板概览

== 设计目标

#tblock(title: [本次改造目标])[
  - 基于 *Typst 0.14* 与 *Touying 0.6.1* 重写主题接口。
  - 将校名、校徽、配色与背景水印统一替换为 *燕山大学* 官方风格。
  - 保留中文学术汇报常见能力：目录页、分节页、页脚、进度条与信息块。
]

#tblock(title: [适用场景])[
  - 本科生 / 研究生课程汇报
  - 组会、读书汇报与学术沙龙
  - 开题、中期、答辩预演
]

== 动态内容

#slide[
  本模板保留了 Touying 的分步展示能力：

  #pause

  - 可以逐条呈现要点

  #pause

  - 可以与双栏、表格、公式混合使用

  #pause

  - 也可以继续扩展为更复杂的动画与演示逻辑
][
  #tblock(title: [演示建议])[
    版式尽量控制在 *每页 3–5 个重点*，让封面、章节页和内容页形成稳定节奏。
  ]
]

= 版式能力

== 双栏布局

#slide(composer: (1fr, 1fr))[
  #tblock(title: [左侧内容])[
    - 使用主题默认标题栏和页脚
    - 标准列表、强调与表格都可直接继承配色
    - 适合放置问题定义、贡献总结或实验设置
  ]
][
  #tblock(title: [右侧内容])[
    - 可与 `#pause`、`#meanwhile` 联用
    - 可放图片、图表、流程图或代码片段
    - 适合展示实验结果、方法框架与结论对比
  ]
]

== 表格示例

#figure(
  table(
    columns: 4,
    align: center + horizon,
    table.header([项目], [封面], [章节页], [内容页]),
    [燕大品牌], [✓], [✓], [✓],
    [顶部导航], [ ], [✓], [✓],
    [页脚页码], [ ], [✓], [✓],
    [信息块], [ ], [ ], [✓],
  ),
  caption: [主题功能覆盖情况],
)

== 图形示例

#figure(
  grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 0.8em,
    rect(width: 100%, height: 4.2em, radius: 10pt, fill: rgb("#DCE8FA")),
    rect(width: 100%, height: 4.2em, radius: 10pt, fill: rgb("#AFCBF2")),
    rect(width: 100%, height: 4.2em, radius: 10pt, fill: rgb("#4D88D6")),
  ),
  caption: [主题蓝色层级示意],
)

= 使用方式

== 最小示例

#tblock(title: [推荐写法])[
  ```typ
  #import "@preview/touying:0.6.1": *
  #import "themes/ysu-beamer.typ": *

  #show: ysu-theme.with(
    config-info(
      title: [报告标题],
      author: [姓名],
      institution: [燕山大学\ 学院名称],
      date: datetime.today(),
    ),
  )

  #title-slide()
  #outline-slide()
  ```
]

== 建议约定

- 一级标题 `= 章节` 用于自动生成 *分节页*。
- 二级标题 `== 页面` 用于生成普通内容页。
- 封面与目录页建议手动放在正文前。

= 总结

== 总结

#tblock(title: [当前模板特性])[
  - 新版 Touying 接口
  - 燕山大学官方视觉元素
  - 中文学术汇报友好排版
  - 可继续扩展自定义页眉、封底和内容组件
]

#ending-slide[
  欢迎继续按学院、课题组或实验室需求细化。
]
