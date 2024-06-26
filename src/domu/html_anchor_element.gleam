import domu/types.{type HTMLAnchorElementLike}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/href)
@external(javascript, "../html_anchor_element_ffi.mjs", "href")
pub fn href(element: HTMLAnchorElementLike(a)) -> String

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement/href)
@external(javascript, "../html_anchor_element_ffi.mjs", "setHref")
pub fn set_href(element: HTMLAnchorElementLike(a), href: String) -> Nil
