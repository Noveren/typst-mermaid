#let p = plugin("typst-mermaid.wasm")

#let mermaid(
  alignment: center,
  width: auto,
  height: auto,
  body,
) = {
  let text = if (type(body) == str) {
    body
  } else if (type(body) == content and body.func() == raw) {
      body.text
  } else {
    assert(false, message: "body must be a `str` or `raw` containing Mermaid diagram syntax",)
  };
  assert(type(text) == str)
  let svg = p.render(bytes(text));
  align(alignment, image(svg, format: "svg", width: width, height: height))
}

#let conf(doc) = {
  show raw.where(lang: "mermaid"): it => {
    mermaid(it)
  }
  doc
}