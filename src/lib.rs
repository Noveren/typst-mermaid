use mermaid_rs_renderer as mermaid;
use wasm_minimal_protocol::{self, wasm_func};

wasm_minimal_protocol::initiate_protocol!();

#[wasm_func]
pub fn render(input: &[u8]) -> Result<Vec<u8>, String> {
    let input = String::from_utf8(input.into()).map_err(|e| format!("Invalid input: {}", e))?;
    let opts = mermaid::RenderOptions::mermaid_default();
    let svg = mermaid::render_with_options(&input, opts)
        .map_err(|e| format!("Failed to render: {}", e))?;
    Ok(svg.into_bytes())
}
