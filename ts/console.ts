export const getConsole = (): Console => console;

export const log = (consoleInstance: Console, val: unknown): void => {
  consoleInstance.log(val);
};

export const globalLog = (val: unknown): void => {
  console.log(val);
};
