export const childNodes = (node: Node): NodeList => node.childNodes;

export const textContent = (node: Node): string | null => node.textContent;

export const setTextContent = (node: Node, text: string): void => {
  node.textContent = text;
};

export const appendChild = (parent: Node, child: Node): void => {
  parent.appendChild(child);
};

export const cloneNode = (node: Node, deep: boolean): Node =>
  node.cloneNode(deep);

export const ownerDocument = (node: Node): Document | null =>
  node.ownerDocument;
