dev:
    cargo build && \
    cp target/wasm32-unknown-unknown/debug/typst_mermaid.wasm \
    typst-package/typst-mermaid.wasm
    typst c ./README.typ README.pdf && rm README.pdf

build:
    cargo build --release && \
    cp target/wasm32-unknown-unknown/release/typst_mermaid.wasm \
    typst-package/typst-mermaid.wasm
