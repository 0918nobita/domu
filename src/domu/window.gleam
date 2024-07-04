import domu/console.{type Console}
import domu/types.{type Window, type WindowLike}

@external(javascript, "../window.mjs", "getWindow")
pub fn window() -> Window

@external(javascript, "../window.mjs", "getConsole")
pub fn console(window: WindowLike(a)) -> Console
