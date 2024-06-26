import domu/internal/nullable.{type Nullable}
import domu/types.{
  type Document, type DocumentLike, type HTMLBodyElement, type HTMLElement,
}
import gleam/option.{type Option}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Document)
@external(javascript, "../document_ffi.mjs", "cDocument")
pub fn document() -> Document

@external(javascript, "../document_ffi.mjs", "body")
fn body_internal(document: DocumentLike(a)) -> Nullable(HTMLBodyElement)

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/body)
pub fn body(document: DocumentLike(a)) -> Option(HTMLBodyElement) {
  document |> body_internal |> nullable.to_option
}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/createElement)
@external(javascript, "../document_ffi.mjs", "createElement")
pub fn create_element(
  document: DocumentLike(a),
  tag_name: String,
) -> HTMLElement
