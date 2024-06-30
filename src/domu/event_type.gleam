import domu/types.{type MouseEvent}

pub type EventType(event_obj) {
  EventType(String)
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
