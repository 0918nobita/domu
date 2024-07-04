import domu/types.{
  type Event, type InputEvent, type MouseEvent, type PointerEvent,
}

pub type EventType(event_obj) {
  EventType(String)
}

pub fn before_input() -> EventType(InputEvent) {
  EventType("beforeinput")
}

pub fn change() -> EventType(Event) {
  EventType("change")
}

pub fn click() -> EventType(PointerEvent) {
  EventType("click")
}

pub fn input() -> EventType(Event) {
  EventType("input")
}

pub fn mouse_down() -> EventType(MouseEvent) {
  EventType("mousedown")
}

pub fn mouse_move() -> EventType(MouseEvent) {
  EventType("mousemove")
}

pub fn mouse_up() -> EventType(MouseEvent) {
  EventType("mouseup")
}
