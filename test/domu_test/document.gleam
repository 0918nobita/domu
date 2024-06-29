import domu/document
import domu/node
import gleam/option.{Some}
import gleeunit/should
import happy_dom

pub fn create_element_test() {
  let doc = happy_dom.init_doc()
  let body = document.body(doc)

  let el = doc |> document.create_element("p")
  el |> node.set_text_content("Hello, world!")
  body |> node.append_child(el)

  should.equal(node.text_content(body), Some("Hello, world!"))
}
