import domu/document
import domu/event_target
import domu/node
import domu/node_list
import domu/types.{type Document, type HTMLElement}
import gleam/int
import gleam/io
import gleam/iterator
import gleam/list
import gleam/option.{None}

pub fn create_list(doc: Document) -> HTMLElement {
  let ul = doc |> document.create_element("ul")

  ["foo", "bar", "baz"]
  |> list.each(fn(item) {
    let li = doc |> document.create_element("li")
    li |> node.set_text_content(item)
    ul |> node.append_child(li)
  })

  ul
}

pub fn main() {
  let doc = document.document()
  let body = doc |> document.body

  let ul = create_list(doc)
  body |> node.append_child(ul)

  ul
  |> node.child_nodes
  |> node_list.entries
  |> iterator.each(fn(item) {
    let #(index, child_node) = item
    io.println(int.to_string(index))
    io.println(child_node |> node.text_content |> option.unwrap("null"))
  })

  let button = doc |> document.create_element("button")
  button |> node.set_text_content("Click me!")
  button
  |> event_target.add_event_listener(
    "click",
    fn(_) { io.println("Clicked") },
    None,
  )
  body |> node.append_child(button)
}
