defmodule People.Plug do
  import Plug.Conn

  def init(options) do
    # initialize options
    options
  end

  def call(conn, _opts) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Hello from the People project!")
  end
end

defmodule People.Hello do
  import Plug.Conn

  def init(options), do: options

  def call(%Plug.Conn{params: %{"name" => name}} = conn, _opts) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Hello #{name}!")
  end
end

defmodule People.Goodbye do
  import Plug.Conn

  def init(options), do: options

  def call(%Plug.Conn{params: %{"name" => name}} = conn, _opts) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Goodbye #{name}!")
  end
end
