import domu/console.{type Console}

@external(javascript, "../../window.mjs", "globalConsole")
pub fn console() -> Console
