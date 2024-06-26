/**
 * @param {NodeList} nodeList
 * @returns {number}
 */
export function length(nodeList) {
  return nodeList.length;
}

/**
 * @param {NodeList} nodeList
 * @param {number} index
 * @returns {Node | null}
 */
export function item(nodeList, index) {
  return nodeList.item(index)
}
