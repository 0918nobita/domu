import { Browser } from 'happy-dom';

/**
 * @typedef {import('happy-dom').BrowserPage} BrowserPage
 * @typedef {import('happy-dom').BrowserFrame} BrowserFrame
 */

/**
 * @returns {Browser}
 */
export function createBrowser() {
  return new Browser();
}

/**
 * @param {Browser} browser
 * @returns {BrowserPage}
 */
export function newPage(browser) {
  return browser.newPage();
}

/**
 * @param {BrowserPage} page
 * @param {string} content
 */
export function setContent(page, content) {
  page.content = content;
}

/**
 * @param {BrowserPage} page
 * @returns {BrowserFrame}
 */
export function mainFrame(page) {
  return page.mainFrame;
}

/**
 * @param {BrowserFrame} frame
 * @returns {import('happy-dom').Document}
 */
export function document(frame) {
  return frame.document;
}
