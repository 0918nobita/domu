import domu/internal/nullable.{type Nullable}
import domu/types.{type EventLike, type EventTarget}
import gleam/option.{type Option}

@external(javascript, "../event.mjs", "target")
fn target_(event: EventLike(a)) -> Nullable(EventTarget)

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Event/target)
pub fn target(event: EventLike(a)) -> Option(EventTarget) {
  event |> target_ |> nullable.to_option
}

@external(javascript, "../event.mjs", "currentTarget")
fn current_target_(event: EventLike(a)) -> Nullable(EventTarget)

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Event/currentTarget)
pub fn current_target(event: EventLike(a)) -> Option(EventTarget) {
  event |> current_target_ |> nullable.to_option
}
