import domu/internal/nullable.{type Nullable}
import domu/types.{type Node}
import gleam/iterator.{type Iterator}
import gleam/option.{type Option, None, Some}

pub type Live

pub type Static

pub type NodeList(a)

@external(javascript, "../node_list_ffi.mjs", "length")
pub fn length(node_list: NodeList(a)) -> Int

@external(javascript, "../node_list_ffi.mjs", "item")
pub fn item_internal(node_list: NodeList(a), index: Int) -> Nullable(Node)

pub fn item(node_list: NodeList(a), index: Int) -> Option(Node) {
  node_list |> item_internal(index) |> nullable.to_option
}

pub fn entries(node_list: NodeList(a)) -> Iterator(#(Int, Node)) {
  iterator.unfold(from: 0, with: fn(i) {
    case item(node_list, i) {
      Some(node) -> iterator.Next(element: #(i, node), accumulator: i + 1)
      None -> iterator.Done
    }
  })
}
