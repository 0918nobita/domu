import domu/internal/iterator_compat.{type JsIterator}
import domu/internal/nullable.{type Nullable}
import domu/types.{type Node}
import gleam/iterator.{type Iterator}
import gleam/option.{type Option}

pub type Live

pub type Static

pub type NodeList(a)

@external(javascript, "../node_list.mjs", "length")
pub fn length(node_list: NodeList(a)) -> Int

@external(javascript, "../node_list.mjs", "item")
pub fn item_(node_list: NodeList(a), index: Int) -> Nullable(Node)

pub fn item(node_list: NodeList(a), index: Int) -> Option(Node) {
  node_list |> item_(index) |> nullable.to_option
}

@external(javascript, "../node_list.mjs", "entries")
fn entries_(node_list: NodeList(a)) -> JsIterator(#(Int, Node))

pub fn entries(node_list: NodeList(a)) -> Iterator(#(Int, Node)) {
  node_list |> entries_ |> iterator_compat.to_gleam_iterator
}
