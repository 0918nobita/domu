import { type Option$, Some } from '@/gleam_stdlib/gleam/option.mjs';

type AddEventListenerOptions = {
  capture: boolean;
  once: boolean;
  passive: Option$<boolean>;
  signal: Option$<AbortSignal>;
};

type JsAddEventListenerOptions = Pick<
  AddEventListenerOptions,
  'capture' | 'once'
> & { passive?: boolean; signal?: AbortSignal };

export const addEventListener = (
  eventTarget: EventTarget,
  type: string,
  listener: (event: Event) => void,
  options: AddEventListenerOptions,
): void => {
  const addEventListenerOptions: JsAddEventListenerOptions = {
    capture: options.capture,
    once: options.once,
  };

  if (options.passive instanceof Some) {
    addEventListenerOptions.passive = options.passive[0];
  }

  if (options.signal instanceof Some) {
    addEventListenerOptions.signal = options.signal[0];
  }

  eventTarget.addEventListener(type, listener, addEventListenerOptions);
};
