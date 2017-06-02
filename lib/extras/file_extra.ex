defmodule File.Extra do

  @doc """
  Extract extname from URI

  ## Examples:

      iex> File.Extra.extname_from_uri("http://example.com/my/file.jpg")
      ".jpg"

  """
  def extname_from_uri(uri) do
    case URI.parse(uri) do
      %{path: path} -> Path.extname(path)
      _ -> nil
    end
  end
end
