pub type Concrete

pub type EventLike(a)

pub type Event =
  EventLike(Concrete)

pub type UIEventTag(a)

pub type UIEventLike(a) =
  EventLike(UIEventTag(a))

pub type UIEvent =
  UIEventLike(Concrete)

pub type MouseEventTag(a)

pub type MouseEventLike(a) =
  UIEventLike(MouseEventTag(a))

pub type MouseEvent =
  MouseEventLike(Concrete)

pub type PointerEventTag(a)

pub type PointerEventLike(a) =
  MouseEventLike(PointerEventTag(a))

pub type PointerEvent =
  PointerEventLike(Concrete)

pub type EventTargetLike(a)

pub type EventTarget =
  EventTargetLike(Concrete)

pub type AbortSignalTag(a)

pub type AbortSignalLike(a) =
  EventTargetLike(AbortSignalTag(a))

pub type AbortSignal =
  AbortSignalLike(Concrete)

pub type NodeTag(a)

pub type NodeLike(a) =
  EventTargetLike(NodeTag(a))

pub type Node =
  NodeLike(Concrete)

pub type ElementTag(a)

pub type ElementLike(a) =
  NodeLike(ElementTag(a))

pub type Element =
  ElementLike(Concrete)

pub type HTMLElementTag(a)

pub type HTMLElementLike(a) =
  ElementLike(HTMLElementTag(a))

pub type HTMLElement =
  HTMLElementLike(Concrete)

pub type HTMLAnchorElementTag(a)

pub type HTMLAnchorElementLike(a) =
  HTMLElementLike(HTMLAnchorElementTag(a))

pub type HTMLAnchorElement =
  HTMLAnchorElementLike(Concrete)

pub type HTMLBodyElementTag(a)

pub type HTMLBodyElementLike(a) =
  HTMLElementLike(HTMLBodyElementTag(a))

pub type HTMLBodyElement =
  HTMLBodyElementLike(Concrete)

pub type DocumentTag(a)

pub type DocumentLike(a) =
  NodeLike(DocumentTag(a))

pub type Document =
  DocumentLike(Concrete)
