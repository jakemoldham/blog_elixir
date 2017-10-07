defmodule BlogElixirWeb.PageController do
  use BlogElixirWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
