pub type Concrete

pub type EventLike(a)

pub type Event =
  EventLike(Concrete)

pub type TagUIEvent(a)

pub type UIEventLike(a) =
  EventLike(TagUIEvent(a))

pub type UIEvent =
  UIEventLike(Concrete)

pub type TagMouseEvent(a)

pub type MouseEventLike(a) =
  UIEventLike(TagMouseEvent(a))

pub type MouseEvent =
  MouseEventLike(Concrete)

pub type TagPointerEvent(a)

pub type PointerEventLike(a) =
  MouseEventLike(TagPointerEvent(a))

pub type PointerEvent =
  PointerEventLike(Concrete)

pub type EventTargetLike(a)

pub type EventTarget =
  EventTargetLike(Concrete)

pub type TagAbortSignal(a)

pub type AbortSignalLike(a) =
  EventTargetLike(TagAbortSignal(a))

pub type AbortSignal =
  AbortSignalLike(Concrete)

pub type TagNode(a)

pub type NodeLike(a) =
  EventTargetLike(TagNode(a))

pub type Node =
  NodeLike(Concrete)

pub type TagElement(a)

pub type ElementLike(a) =
  NodeLike(TagElement(a))

pub type Element =
  ElementLike(Concrete)

pub type TagHTMLElement(a)

pub type HTMLElementLike(a) =
  ElementLike(TagHTMLElement(a))

pub type HTMLElement =
  HTMLElementLike(Concrete)

pub type TagHTMLAnchorElement(a)

pub type HTMLAnchorElementLike(a) =
  HTMLElementLike(TagHTMLAnchorElement(a))

pub type HTMLAnchorElement =
  HTMLAnchorElementLike(Concrete)

pub type TagHTMLBodyElement(a)

pub type HTMLBodyElementLike(a) =
  HTMLElementLike(TagHTMLBodyElement(a))

pub type HTMLBodyElement =
  HTMLBodyElementLike(Concrete)

pub type TagDocument(a)

pub type DocumentLike(a) =
  NodeLike(TagDocument(a))

pub type Document =
  DocumentLike(Concrete)
