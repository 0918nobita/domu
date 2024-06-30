import domu/types.{type MouseEvent, type PointerEvent}

pub type EventType(event_obj) {
  EventType(String)
}

pub fn click() -> EventType(PointerEvent) {
  EventType("click")
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
