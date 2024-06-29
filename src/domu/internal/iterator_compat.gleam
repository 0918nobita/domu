import gleam/iterator.{type Iterator, type Step}

pub type JsIterator(a)

@external(javascript, "../../iterator_compat.mjs", "next")
fn next(iter: JsIterator(a)) -> Step(a, Nil)

pub fn to_gleam_iterator(iter: JsIterator(a)) -> Iterator(a) {
  iterator.unfold(from: Nil, with: fn(_) { next(iter) })
}
