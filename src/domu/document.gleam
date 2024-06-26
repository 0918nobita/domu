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

/// Returns the `document.body` as an `Option(HTMLBodyElement)` .
///
/// This function safely handles the case where `document.body` is `null` .
///
/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/body)
pub fn body_option(document: DocumentLike(a)) -> Option(HTMLBodyElement) {
  document |> body_internal |> nullable.to_option
}

/// Returns the `document.body` as an `HTMLBodyElement` .
///
/// Note that `document.body` itself returns `null` when the `<body>` tag hasn't been loaded yet.
/// This function is defined for convenience.
///
/// For safer handling, use `body_option` instead.
///
/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/body)
pub fn body(document: DocumentLike(a)) -> HTMLBodyElement {
  document |> body_internal |> nullable.unsafe_unwrap
}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/createElement)
@external(javascript, "../document_ffi.mjs", "createElement")
pub fn create_element(
  document: DocumentLike(a),
  tag_name: String,
) -> HTMLElement
