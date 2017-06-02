if Code.ensure_loaded?(Plug.Conn) do
  defmodule Plug.Conn.Extra do

    @doc """
    Get first header that matches key
    ## Example:
    iex> Plug.Conn.Extra.get_first_req_header(
    ...>   %Plug.Conn{req_headers: [{"x-hello", "world"}]}, "x-hello"
    ...> )
    "world"
    """
    def get_first_req_header(conn, key) do
      conn
      |> Plug.Conn.get_req_header(key)
      |> List.first
    end
  end
end
