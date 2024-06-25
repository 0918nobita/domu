import gleeunit
import happy_dom
import subtyped_dom/document

pub fn main() {
  gleeunit.main()
}

pub fn create_element_test() {
  let page = happy_dom.create_browser() |> happy_dom.new_page
  page
  |> happy_dom.set_content(
    "<!DOCTYPE html><html><head><meta charset=\"utf-8\"></head><body></body></html>",
  )
  let doc = page |> happy_dom.main_frame |> happy_dom.document
  doc |> document.create_element("p")
}
