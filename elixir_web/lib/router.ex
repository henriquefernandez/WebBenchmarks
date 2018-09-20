defmodule Router do
  use Plug.Router
  import Poison

  plug :match
  plug :dispatch

  get "/10000" do
    text = 
      Enum.reduce(10000..1, "", 
        fn i, acc -> 
          acc <> Integer.to_string(i) 
        end)

    send_resp(conn, 200, text)
  end

  get "/1000" do
    text = 
      Enum.reduce(1000..1, "", 
        fn i, acc -> 
          acc <> Integer.to_string(i) 
        end)

    send_resp(conn, 200, text)
  end

  get "/100" do
    text = 
      Enum.reduce(100..1, "", 
        fn i, acc -> 
          acc <> Integer.to_string(i)
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