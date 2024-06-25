/**
 * @returns {HTMLElement | null}
 */
export function body() {
  return document.body;
}

/**
 * @param {string} tagName
 * @returns {HTMLElement}
 */
export function createElement(tagName) {
  return document.createElement(tagName);
}
