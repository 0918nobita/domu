import gleeunit
import gleeunit/should

@external(javascript, "./happy_dom_ffi.mjs", "example")
fn example() -> Nil

pub fn main() {
  example()
  gleeunit.main()
}

// gleeunit test functions end in `_test`
pub fn hello_world_test() {
  1
  |> should.equal(1)
}
