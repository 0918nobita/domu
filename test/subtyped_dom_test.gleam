import gleam/option.{None, Some}
import gleeunit
import gleeunit/should
import happy_dom
import subtyped_dom/document
import subtyped_dom/node
import subtyped_dom/types

pub fn main() {
  gleeunit.main()
}

fn init_doc() -> types.Document {
  let page = happy_dom.create_browser() |> happy_dom.new_page

  page
  |> happy_dom.set_content(
    "<!DOCTYPE html><html><head><meta charset=\"utf-8\"></head><body></body></html>",
  )

  page |> happy_dom.main_frame |> happy_dom.document
}

pub fn create_element_test() {
  let doc = init_doc()
  let assert Some(body) = document.body(doc)

  let el = doc |> document.create_element("p")
  el |> node.set_text_content("Hello, world!")
  body |> node.append_child(el)

  should.equal(node.text_content(body), Some("Hello, world!"))
}

pub fn get_text_content_from_document_test() {
  let doc = init_doc()
  should.equal(node.text_content(doc), None)
}
