import domu/internal/nullable.{type Nullable}
import domu/node_list.{type Live, type NodeList}
import domu/types.{type Document, type Node, type NodeLike}
import gleam/option.{type Option}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
@external(javascript, "../node.mjs", "childNodes")
pub fn child_nodes(node: NodeLike(a)) -> NodeList(Live)

@external(javascript, "../node.mjs", "textContent")
fn text_content_internal(node: NodeLike(a)) -> Nullable(String)

/// Gets `textContent` property of `Node`
///
/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/textContent)
pub fn text_content(node: NodeLike(a)) -> Option(String) {
  node |> text_content_internal |> nullable.to_option
}

/// Sets `textContent` property of `Node`
///
/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/textContent)
@external(javascript, "../node.mjs", "setTextContent")
pub fn set_text_content(node: NodeLike(a), text: String) -> Nil

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/appendChild)
@external(javascript, "../node.mjs", "appendChild")
pub fn append_child(parent: NodeLike(a), child: NodeLike(b)) -> Nil

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/cloneNode)
@external(javascript, "../node.mjs", "cloneNode")
pub fn clone_node(node: NodeLike(a), deep: Bool) -> Node

@external(javascript, "../node.mjs", "ownerDocument")
fn owner_document_internal(node: NodeLike(a)) -> Nullable(Document)

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
pub fn owner_document(node: NodeLike(a)) -> Option(Document) {
  node |> owner_document_internal |> nullable.to_option
}
