import gleam/option.{type Option}
import subtyped_dom/internal/nullable.{type Nullable}
import subtyped_dom/types

@external(javascript, "../document_ffi.mjs", "body")
fn body_() -> Nullable(types.HTMLElement)

pub fn body() -> Option(types.HTMLElement) {
  body_() |> nullable.to_option
}

@external(javascript, "../document_ffi.mjs", "createElement")
pub fn create_element(tag_name: String) -> types.HTMLElement
