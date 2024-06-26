/**
 * @param {Node} node
 * @returns {NodeList}
 */
export function childNodes(node) {
  return node.childNodes;
}

/**
 * @param {Node} node
 * @returns {string | null}
 */
export function textContent(node) {
  return node.textContent;
}

/**
 * @param {Node} node
 * @param {string} text
 */
export function setTextContent(node, text) {
  node.textContent = text;
}

/**
 * @param {Node} parent
 * @param {Node} child
 */
export function appendChild(parent, child) {
  parent.appendChild(child);
}

/**
 * @param {Node} node
 * @param {boolean} deep
 * @returns {Node}
 */
export function cloneNode(node, deep) {
  return node.cloneNode(deep)
}

/**
 * @param {Node} node
 * @returns {Document | null}
 */
export function ownerDocument(node) {
  return node.ownerDocument
}
