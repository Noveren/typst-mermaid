# Type Mermaid

`typst-mermaid` 是基于 [`mermaid-rs-render`](https://github.com/1jehuang/mermaid-rs-renderer)（`mmdr`）的 [`mermaid.js`](https://mermaid.js.org/) 语法图表渲染插件

- 说明：`mmdr` 使用 Rust 开发，由个人维护，编辑器 Zed 目前 [Fork](https://github.com/zed-industries/mermaid-rs-renderer) 该项目用于其 Markdown 渲染；当前 `mmdr`支持 23 种 Mermaid 图表类型，但行为与原版 `mermaid.js` 存在一定差异

```typst
#import "@local/mermaid:0.1.0: conf, mermaid"

#mermaid()[```
flowchart LR:
  A --> B
```]

#show: conf
```mermaid
flowchart LR:
  A --> B
```//


```
