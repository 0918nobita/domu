/**
 * @param {unknown} value
 * @return {value is null}
 */
export function isNull(value) {
  return value === null;
}

/**
 * @param {T} value
 * @returns {T}
 */
export function unsafeUnwrap(value) {
  return value;
}
