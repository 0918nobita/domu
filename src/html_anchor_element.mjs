/**
 * @param {HTMLAnchorElement} element
 * @returns {string}
 */
export function href(element) {
  return element.href;
}

/**
 * @param {HTMLAnchorElement} element
 * @param {string} value
 */
export function setHref(element, value) {
  element.href = value;
}
