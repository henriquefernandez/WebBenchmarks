defmodule Benchmarking do
  import Plug.Conn

  def init(options), do: options
  def call(conn, _opts) do
    AppRouter.call(conn, AppRouter.init([]))
  end
end
