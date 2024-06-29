import gleam/option.{type Option, None, Some}

pub type Nullable(t)

@external(javascript, "../../nullable.mjs", "isNull")
fn is_null(nullable: Nullable(t)) -> Bool

@external(javascript, "../../nullable.mjs", "unsafeUnwrap")
pub fn unsafe_unwrap(nullable: Nullable(t)) -> t

pub fn to_option(nullable: Nullable(t)) -> Option(t) {
  case is_null(nullable) {
    True -> None
    False -> Some(unsafe_unwrap(nullable))
  }
}
