defmodule CopybookWeb.PageController do
  use CopybookWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
