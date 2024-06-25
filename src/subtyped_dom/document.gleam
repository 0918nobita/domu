import subtyped_dom/types.{type Document, type HTMLElement}

@external(javascript, "../document_ffi.mjs", "cDocument")
pub fn document() -> Document

@external(javascript, "../document_ffi.mjs", "body")
pub fn body(document: Document) -> HTMLElement

@external(javascript, "../document_ffi.mjs", "createElement")
pub fn create_element(document: Document, tag_name: String) -> HTMLElement
