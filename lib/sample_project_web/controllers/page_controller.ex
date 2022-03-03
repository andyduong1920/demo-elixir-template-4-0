defmodule SampleProjectWeb.PageController do
  use SampleProjectWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
