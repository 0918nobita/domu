import { type Step$, Next, Done } from '@/gleam_stdlib/gleam/iterator.mjs';

export const next = <T>(iter: Iterator<T>): Step$<T, undefined> => {
  const res = iter.next();

  if (res.done === true) {
    return new Done();
  }

  return new Next(res.value, undefined);
};
