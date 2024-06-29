import domu/types.{type Document}

pub type Browser

pub type BrowserPage

pub type BrowserFrame

@external(javascript, "./happy_dom_ffi.mjs", "createBrowser")
pub fn create_browser() -> Browser

@external(javascript, "./happy_dom_ffi.mjs", "newPage")
pub fn new_page(browser: Browser) -> BrowserPage

@external(javascript, "./happy_dom_ffi.mjs", "setContent")
pub fn set_content(page: BrowserPage, content: String) -> Nil

@external(javascript, "./happy_dom_ffi.mjs", "mainFrame")
pub fn main_frame(page: BrowserPage) -> BrowserFrame

@external(javascript, "./happy_dom_ffi.mjs", "document")
pub fn document(frame: BrowserFrame) -> Document

pub fn init_doc() -> types.Document {
  let page = create_browser() |> new_page

  page
  |> set_content(
    "<!DOCTYPE html><html><head><meta charset=\"utf-8\"></head><body></body></html>",
  )

  page |> main_frame |> document
}
