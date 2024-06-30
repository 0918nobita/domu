import domu/add_event_listener_options.{type AddEventListenerOptions, default}
import domu/event_type.{type EventType, EventType}
import domu/types.{type EventTargetLike}
import gleam/option.{type Option}

@external(javascript, "../event_target.mjs", "addEventListener")
fn add_event_listener_(
  event_target: EventTargetLike(a),
  event_type: String,
  listener: fn(b) -> Nil,
  options: AddEventListenerOptions(b),
) -> Nil

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener)
pub fn add_event_listener(
  event_target: EventTargetLike(a),
  event_type: EventType(b),
  listener: fn(b) -> Nil,
  options: Option(AddEventListenerOptions(b)),
) {
  let EventType(event_type) = event_type
  let options = options |> option.lazy_unwrap(default)

  add_event_listener_(event_target, event_type, listener, options)
}
