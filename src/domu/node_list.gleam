import domu/internal/iterator_compat.{type JsIterator}
import domu/internal/nullable.{type Nullable}
import domu/types.{type Node}
import gleam/iterator.{type Iterator}
import gleam/option.{type Option}

pub type Live

pub type Static

pub type NodeList(a)

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/NodeList/length)
@external(javascript, "../node_list.mjs", "length")
pub fn length(node_list: NodeList(a)) -> Int

@external(javascript, "../node_list.mjs", "item")
pub fn item_(node_list: NodeList(a), index: Int) -> Nullable(Node)

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/NodeList/item)
pub fn item(node_list: NodeList(a), index: Int) -> Option(Node) {
  node_list |> item_(index) |> nullable.to_option
}

@external(javascript, "../node_list.mjs", "entries")
fn entries_(node_list: NodeList(a)) -> JsIterator(#(Int, Node))

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/NodeList/entries)
pub fn entries(node_list: NodeList(a)) -> Iterator(#(Int, Node)) {
  node_list |> entries_ |> iterator_compat.to_gleam_iterator
}

pub fn to_list(node_list: NodeList(a)) -> List(Node) {
  node_list
  |> entries
  |> iterator.map(fn(item) {
    let #(_index, node) = item
    node
  })
  |> iterator.to_list
}
