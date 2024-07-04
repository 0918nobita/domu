export const getWindow = (): Window => window;

export const getConsole = (
  windowInstance: Window & { console: Console },
): Console => windowInstance.console;

export const globalConsole = (): Console => console;
