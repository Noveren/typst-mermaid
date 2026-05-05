// #import "typst-package/lib.typ": conf, mermaid
#import "@local/mermaid:0.1.0": conf, mermaid
#show: conf

`typst-mermaid` 是基于 #link("https://github.com/1jehuang/mermaid-rs-renderer")[`mermaid-rs-render`]（`mmdr`）的 #link("https://mermaid.js.org/")[`mermaid.js`] 语法图表渲染插件

- 说明：`mmdr` 使用 Rust 开发，由个人维护，编辑器 Zed 目前 #link("https://github.com/zed-industries/mermaid-rs-renderer")[Fork] 该项目用于其 Markdown 渲染；当前 `mmdr`支持 23 种 Mermaid 图表类型，但行为与原版 `mermaid.js` 存在一定差异

```typ
``\`mermaid
  flowchart LR:
    A --> B
``\`
```

#mermaid(alignment: right, height: 40pt)[```
flowchart LR:
  A --> B
```]

```
flowchart LR:
  A --> B
```


= flowchart

== A node
```mermaid
flowchart LR:
  A
  B[This is the text in the box]
  C[This ❤ Unicode]
```

```mermaid
flowchart LR
    markdown["`This **is** _Markdown_`"]
    newLines["`Line1
    Line 2
    Line 3`"]
    markdown --> newLines
```

```mermaid
flowchart TD
    Start --> Stop
```

```mermaid
flowchart LR
    Start --> Stop
```

```mermaid
flowchart LR
  id1(This is the text in the box)
  id2([This is the text in the box])
  id3[[This is the text in the box]]
  id4[(Database)]
  id5((This is the text in the circle))
  id6>This is the text in the box]
```

```mermaid
flowchart LR
  A -->|文本| B
  B -->|text| C
```

```mermaid
flowchart LR
	A0[commit]
	B0[tree]
	C0[blob]
	D0[blob]
	A1[commit]
	B1[tree]
	C1[blob]
	D1[blob]
	BRANCH[branch]	

	HEAD --> BRANCH
	BRANCH --> A1
	tag --> A0
	A1 --> A0
	subgraph branch
		subgraph commit0
			direction LR
			A0 --> B0
			subgraph snapshot0
				direction LR
				B0 --> C0
				B0 --> D0
			end
		end
		subgraph commit1
			direction LR
			A1 --> B1
			subgraph snapshot1
				direction LR
				B1 --> C1
				B1 --> D1
			end
		end
	end
```

#lorem(20)

```mermaid
  flowchart LR:
    A --> B
    B --> C
```


#lorem(20)

```mermaid
gitGraph
   commit
   commit
   branch develop
   checkout develop
   commit
   commit
   checkout main
   merge develop
   commit
   commit
```

```mermaid
gantt
    title A Gantt Diagram
    dateFormat YYYY-MM-DD
    section Section
        A task          :a1, 2014-01-01, 30d
        Another task    :after a1, 20d
    section Another
        Task in Another :2014-01-12, 12d
        another task    :24d
```

#lorem(20)

```mermaid
sequenceDiagram
    Alice->>John: Hello John, how are you?
    John-->>Alice: Great!
    Alice-)John: See you later!
```

#lorem(20)

```mermaid
sequenceDiagram
    API->>Svc: Authenticate
    Svc->>DB: Query user
    DB-->>Svc: User data
    Svc-->>API: Token
```