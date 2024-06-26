# domu

DOM library for Gleam

<!--
[![Package Version](https://img.shields.io/hexpm/v/domu)](https://hex.pm/packages/domu)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/domu/)
-->

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

```sh
gleam run        # Run the project
gleam test       # Run the tests
gleam docs build # Build the documentation
```
