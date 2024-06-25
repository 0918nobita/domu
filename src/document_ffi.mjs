/**
 * @returns {Document}
 */
export function cDocument() {
  return document;
}

/**
 * @param {Document} doc
 * @returns {HTMLElement}
 */
export function body(doc) {
  return doc.body;
}

/**
 * @param {Document} doc
 * @param {string} tagName
 * @returns {HTMLElement}
 */
export function createElement(doc, tagName) {
  return doc.createElement(tagName);
}
