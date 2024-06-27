import domu/add_event_listener_options.{type AddEventListenerOptions, default}
import domu/types.{type Event, type EventTargetLike}
import gleam/option.{type Option}

@external(javascript, "../event_target_ffi.mjs", "addEventListener")
fn add_event_listener_internal(
  event_target: EventTargetLike(a),
  event_type: String,
  listener: fn(Event) -> Nil,
  options: AddEventListenerOptions(b),
) -> Nil

pub fn add_event_listener(
  event_target: EventTargetLike(a),
  event_type: String,
  listener: fn(Event) -> Nil,
  options: Option(AddEventListenerOptions(b)),
) {
  let options = options |> option.lazy_unwrap(default)

  add_event_listener_internal(event_target, event_type, listener, options)
}
