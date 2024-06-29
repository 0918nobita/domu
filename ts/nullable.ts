export const isNull = (value: unknown): value is null => value === null;

export const unsafeUnwrap = <T>(value: T): T => value;
