defmodule String.Extra do

  @doc """
  HMAC-SHA1, e.g. suitable for Twitter OAuth
  """
  def hmac_sha1(key, string)  do
    :sha
    |> :crypto.hmac(key, string)
    |> Base.url_encode64
  end

  @doc """
  url safe, strong-random hash
  """
  def random_hash(length \\ 8) do
    length
    |> :crypto.strong_rand_bytes
    |> Base.url_encode64
    |> String.slice(0, length)
  end

  @doc """
  Random alphanumeric string of n length
  """
  def random_alphanumeric(length \\ 8)

  def random_alphanumeric(1) do
    alpha_numeric_characters()
    |> Enum.random
    |> List.wrap
    |> List.to_string
  end

  def random_alphanumeric(length) do
    (1..length)
    |> Enum.map(fn(_) -> random_alphanumeric(1) end)
    |> Enum.join("")
  end

  @doc """
  random numeric string
  """
  def random_numeric(length \\ 8) do
    (1..length)
    |> Enum.map(fn(_) -> Enum.random(1..9) end)
    |> Enum.join("")
  end

  @doc """
  SHA1 hash

  ## Example:

      iex> String.Extra.sha1("hello world")
      "Kq5sNclPz7QV2-lfQIuc6R7oRu0="

  """
  def sha1(string) do
    :sha
    |> :crypto.hash(string)
    |> Base.url_encode64
  end

  # character list with numbers and lower/upper case letters
  defp alpha_numeric_characters do
    '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
  end
end
