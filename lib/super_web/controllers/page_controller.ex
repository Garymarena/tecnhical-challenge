defmodule SuperWeb.PageController do
  use SuperWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
