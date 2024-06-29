import { type Option$, Some } from '@/gleam_stdlib/gleam/option.mjs';

type AddEventListenerOptions = {
  capture: boolean;
  once: boolean;
  passive: Option$<boolean>;
  abort_signal: Option$<AbortSignal>;
};

type JSAddEventListenerOptions =
  Pick<AddEventListenerOptions, 'capture' | 'once'> & { passive?: boolean; signal?: AbortSignal };

export const addEventListener = (
  eventTarget: EventTarget,
  type: string,
  listener: (event: Event) => void,
  options: AddEventListenerOptions
): void => {
  const addEventListenerOptions: JSAddEventListenerOptions = {
    capture: options.capture,
    once: options.once,
  };

  if (options.passive instanceof Some) {
    addEventListenerOptions.passive = options.passive[0];
  }

  if (options.abort_signal instanceof Some) {
    addEventListenerOptions.signal = options.abort_signal[0];
  }

  eventTarget.addEventListener(type, listener, addEventListenerOptions);
};
