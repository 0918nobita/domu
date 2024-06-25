import { Browser } from 'happy-dom';

export function example() {
  const browser = new Browser();
  const page = browser.newPage();

  page.content = "<!DOCTYPE html><html><head><meta charset=\"utf-8\"><title>Example</title></head><body><p>(happy-dom) Hello from test page</p></body></html>";

  console.log(page.mainFrame.document.body.textContent);

  void browser.close();
}
