/**
 * @param {Node} parent
 * @param {Node} child
 */
export function appendChild(parent, child) {
  parent.appendChild(child);
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
