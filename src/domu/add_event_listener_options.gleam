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

pub fn capture(
  options: AddEventListenerOptions(a),
  value: Bool,
) -> AddEventListenerOptions(a) {
  AddEventListenerOptions(..options, capture: value)
}

pub fn once(
  options: AddEventListenerOptions(a),
  value: Bool,
) -> AddEventListenerOptions(a) {
  AddEventListenerOptions(..options, once: value)
}

pub fn passive(
  options: AddEventListenerOptions(a),
  value: Bool,
) -> AddEventListenerOptions(a) {
  AddEventListenerOptions(..options, passive: Some(value))
}

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
