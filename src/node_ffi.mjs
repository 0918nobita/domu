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