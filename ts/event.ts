export const target = (event: Event): EventTarget | null => event.target;

export const currentTarget = (event: Event): EventTarget | null =>
  event.currentTarget;
