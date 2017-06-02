defmodule Kernel.Extra do

  @doc """
  Returns true if value is nil, a string with only whitespace, or an empty array

  ## Examples:

      iex> Kernel.Extra.blank?(nil)
      true

      iex> Kernel.Extra.blank?("")
      true

      iex> Kernel.Extra.blank?("   ")
      true

      iex> Kernel.Extra.blank?([])
      true

      iex> Kernel.Extra.blank?("   .")
      false

      iex> Kernel.Extra.blank?([1])
      false

      iex> Kernel.Extra.blank?(false)
      false

  """
  def blank?(value) when is_nil(value) do
    true
  end

  def blank?(string) when is_binary(string) do
    string =~ ~r(^\s*$)
  end

  def blank?([]) do
    true
  end

  def blank?(_) do
    false
  end

  @doc """
  Returns true if value is not `blank?` See `blank?`
  """
  def present?(value) do
    !blank?(value)
  end
end
