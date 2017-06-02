# Extras

Tiny, tested, namespaced helper functions for Elixir.

![](https://media.giphy.com/media/8Ry7iAVwKBQpG/giphy.gif)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `extras` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:extras, "~> 0.1.0"}]
end
```

## Usage

```elixir
String.Extra.random_hash
# "0u1AgoEd"

Kernel.Extra.blank?("   ")
# true

File.Extra.extname_from_uri("http://example.com/my/file.jpg")
# ".jpg"
```

## Contributing

Please feel free to submit PRs with your favorite, tiny, tested helper functions.

## License

Extras is released under the MIT License.
