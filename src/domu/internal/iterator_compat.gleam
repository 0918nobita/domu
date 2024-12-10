import gleam/yielder.{type Step,type Yielder}

pub type JsIterator(a)

@external(javascript, "../../iterator_compat.mjs", "next")
fn next(iter: JsIterator(a)) -> Step(a, Nil)

pub fn to_gleam_iterator(iter: JsIterator(a)) -> Yielder(a) {
  yielder.unfold(from: Nil, with: fn(_) { next(iter) })
}
