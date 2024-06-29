# domu

[![Package Version](https://img.shields.io/hexpm/v/domu)](https://hex.pm/packages/domu)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/domu/)

DOM library for Gleam

```sh
gleam add domu
```
```gleam
import domu/document
import domu/node

pub fn main() {
  let doc = document.document()
  let body = doc |> document.body
  let el = doc |> document.create_element("p")
  el |> node.set_text_content("Hello, world!")
  body |> node.append_child(el)
}
```

<!-- Further documentation can be found at <https://hexdocs.pm/domu>. -->

## Development

### Build

```sh
task build # or `task build --watch` to watch for changes and rebuild
```

### Test

```sh
task test
```

### Generate docs

```sh
task docs
```

### Clean

```sh
task clean
```
