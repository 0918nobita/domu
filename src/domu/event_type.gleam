import domu/types.{
  type Event, type InputEvent, type MouseEvent, type PointerEvent,
}

pub type EventType(event_obj) {
  EventType(String)
}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/beforeinput_event)
pub fn before_input() -> EventType(InputEvent) {
  EventType("beforeinput")
}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/change_event)
pub fn change() -> EventType(Event) {
  EventType("change")
}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/click_event)
pub fn click() -> EventType(PointerEvent) {
  EventType("click")
}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/input_event)
pub fn input() -> EventType(Event) {
  EventType("input")
}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mousedown_event)
pub fn mouse_down() -> EventType(MouseEvent) {
  EventType("mousedown")
}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mousemove_event)
pub fn mouse_move() -> EventType(MouseEvent) {
  EventType("mousemove")
}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mouseup_event)
pub fn mouse_up() -> EventType(MouseEvent) {
  EventType("mouseup")
}
