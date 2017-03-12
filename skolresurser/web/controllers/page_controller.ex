defmodule Skolresurser.PageController do
  use Skolresurser.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
