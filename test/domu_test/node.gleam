import domu/document
import domu/node
import gleam/option.{None, Some}
import gleeunit/should
import happy_dom

pub fn get_text_content_from_document_test() {
  let doc = happy_dom.init_doc()
  should.equal(node.text_content(doc), None)
}

pub fn clone_node_test() {
  let doc = happy_dom.init_doc()
  let el = doc |> document.create_element("p")
  el |> node.set_text_content("Hello, world!")

  let shallow_cloned = el |> node.clone_node(False)
  should.equal(node.text_content(shallow_cloned), Some(""))

  let deep_cloned = el |> node.clone_node(True)
  should.equal(node.text_content(deep_cloned), Some("Hello, world!"))
}
