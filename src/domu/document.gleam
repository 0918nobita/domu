import domu/internal/nullable.{type Nullable}
import domu/types.{
  type Document, type DocumentLike, type HTMLBodyElement, type HTMLElement,
  type NodeLike,
}
import gleam/option.{type Option}

@external(javascript, "../document.mjs", "ofNode")
fn of_node_(node: NodeLike(a)) -> Nullable(Document)

/// Downcasts `Node` to `Document` if possible.
pub fn of_node(node: NodeLike(a)) -> Option(Document) {
  node |> of_node_ |> nullable.to_option
}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Document)
@external(javascript, "../document.mjs", "getDocument")
pub fn document() -> Document

@external(javascript, "../document.mjs", "body")
fn body_(document: DocumentLike(a)) -> Nullable(HTMLBodyElement)

/// Returns the `document.body` as an `Option(HTMLBodyElement)` .
///
/// This function safely handles the case where `document.body` is `null` .
///
/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/body)
pub fn body_option(document: DocumentLike(a)) -> Option(HTMLBodyElement) {
  document |> body_ |> nullable.to_option
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
  document |> body_ |> nullable.unsafe_unwrap
}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/createElement)
@external(javascript, "../document.mjs", "createElement")
pub fn create_element(
  document: DocumentLike(a),
  tag_name: String,
) -> HTMLElement

@external(javascript, "../document.mjs", "createAnchorElement")
pub fn create_element_a(document: DocumentLike(a)) -> types.HTMLAnchorElement
