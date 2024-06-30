import domu/types.{type AbortSignalLike}
import gleam/option.{type Option, None, Some}

pub type AddEventListenerOptions(a) {
  AddEventListenerOptions(
    capture: Bool,
    once: Bool,
    passive: Option(Bool),
    signal: Option(AbortSignalLike(a)),
  )
}

pub fn default() -> AddEventListenerOptions(a) {
  AddEventListenerOptions(
    capture: False,
    once: False,
    passive: None,
    signal: None,
  )
}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener#capture)
pub fn capture(
  options: AddEventListenerOptions(a),
  value: Bool,
) -> AddEventListenerOptions(a) {
  AddEventListenerOptions(..options, capture: value)
}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener#once)
pub fn once(
  options: AddEventListenerOptions(a),
  value: Bool,
) -> AddEventListenerOptions(a) {
  AddEventListenerOptions(..options, once: value)
}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener#passive)
pub fn passive(
  options: AddEventListenerOptions(a),
  value: Bool,
) -> AddEventListenerOptions(a) {
  AddEventListenerOptions(..options, passive: Some(value))
}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener#signal)
pub fn signal(
  options: AddEventListenerOptions(a),
  value: AbortSignalLike(b),
) -> AddEventListenerOptions(b) {
  AddEventListenerOptions(
    capture: options.capture,
    once: options.once,
    passive: options.passive,
    signal: Some(value),
  )
}
