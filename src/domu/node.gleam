import domu/internal/nullable.{type Nullable}
import domu/types.{type Node, type NodeLike}
import gleam/option.{type Option}

@external(javascript, "../node_ffi.mjs", "textContent")
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
@external(javascript, "../node_ffi.mjs", "setTextContent")
pub fn set_text_content(node: NodeLike(a), text: String) -> Nil

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/appendChild)
@external(javascript, "../node_ffi.mjs", "appendChild")
pub fn append_child(parent: NodeLike(a), child: NodeLike(b)) -> Nil

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/cloneNode)
@external(javascript, "../node_ffi.mjs", "cloneNode")
pub fn clone_node(node: NodeLike(a), deep: Bool) -> Node
