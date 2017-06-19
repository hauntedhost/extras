defmodule Map.Extra do

  @moduledoc """
  Extra helper functions for Map
  """

  @doc """
  Renames existing key in a Map, raising KeyError if key does not exist.

  ## Example:

      iex> Map.Extra.rename_key(%{foo: "bar"}, :foo, :baz)
      %{baz: "bar"}

  """
  def rename_key(map, key, new_key) do
    value = Map.fetch!(map, key)
    map
    |> Map.delete(key)
    |> Map.put(new_key, value)
  end
end
