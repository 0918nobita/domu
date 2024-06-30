import domu/document
import domu/event_target
import domu/event_type
import gleam/io
import gleam/option.{None}
import happy_dom

pub fn add_event_listener_test() {
  let doc = happy_dom.init_doc()
  let body = doc |> document.body

  body
  |> event_target.add_event_listener(
    event_type.mouse_down(),
    fn(_mouse_event) { io.println("Mousedown") },
    None,
  )
}
