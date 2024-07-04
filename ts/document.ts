export const ofNode = (node: Node): Document | null => {
  return node instanceof Document ? node : null;
};

export const getDocument = (): Document => document;

export const body = (doc: Document): HTMLElement => doc.body;

export const globalBody = (): HTMLElement => document.body;

export const createElement = (doc: Document, tagName: string): HTMLElement =>
  doc.createElement(tagName);

export const globalCreateElement = (tagName: string): HTMLElement =>
  document.createElement(tagName);

export const createAnchorElement = (doc: Document): HTMLAnchorElement =>
  doc.createElement('a');
