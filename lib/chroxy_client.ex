defmodule ChroxyClient do

  require Logger

  alias ChromeRemoteInterface.{HTTP, PageSession}

  @chrome_server %{host: "localhost", port: 1330}

  @doc """
  Requests Chroxy Server for websocket uri for a page RDP
  session.
  """
  def session!(server \\ @chrome_server) do
    {:ok, ws} = HTTP.call(server, "/api/v1/connection")
    Logger.debug("WebSocket: #{ws}")
    ws
  end

  @doc """
  Requests Chroxy Server for websocket uri for a page RDP
  session, and spawn a `ChromeRemoteInterface` `PageSession`.
  """
  def page_session!(server \\ @chrome_server) do
    server
    |> session!()
    |> PageSession.start_link()
    |> elem(1)
  end

end
