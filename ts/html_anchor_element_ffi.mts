export const href = (el: HTMLAnchorElement): string => el.href;

export const setHref = (el: HTMLAnchorElement, value: string): void => {
  el.href = value;
};
