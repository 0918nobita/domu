pub type Console

@external(javascript, "../console.mjs", "getConsole")
pub fn console() -> Console

@external(javascript, "../console.mjs", "log")
pub fn log(console: Console, val: a) -> Nil
