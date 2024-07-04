import domu/internal/nullable.{type Nullable}
import domu/types.{type HTMLBodyElement, type HTMLElement}
import gleam/option.{type Option}

@external(javascript, "../../document.mjs", "globalBody")
fn body_() -> Nullable(HTMLBodyElement)

pub fn body_option() -> Option(HTMLBodyElement) {
  body_() |> nullable.to_option
}

pub fn body() -> HTMLBodyElement {
  body_() |> nullable.unsafe_unwrap
}

@external(javascript, "../../document.mjs", "globalCreateElement")
pub fn create_element(tag_name: String) -> HTMLElement
