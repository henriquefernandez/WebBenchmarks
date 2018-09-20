defmodule Router do
  use Plug.Router
  import Poison

  plug :match
  plug :dispatch

  get "/hello" do
    text = 
      Enum.reduce(10000..1, "", 
        fn i, acc -> 
          Integer.to_string(i) <> acc 
        end)

    send_resp(conn, 200, text)
  end

  get "/" do
    send_resp(conn, 200, Poison.encode!(%{text: "benchmark"}))
  end

  match _ do
    send_resp(conn, 404, "Not Found")
  end
end