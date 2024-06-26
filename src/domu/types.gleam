pub type Concrete

pub type EventTargetLike(a)

pub type EventTarget =
  EventTargetLike(Concrete)

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
