defmodule SampleProjectWeb.IconHelper do
  @moduledoc """
  Generate the SVG icon tag
  """

  use Phoenix.HTML

  alias SampleProjectWeb.Router.Helpers, as: Routes

  def icon_tag(conn, name, opts \\ []) do
    classes = "icon " <> Keyword.get(opts, :class, "")

    content_tag(:svg, class: classes) do
      tag(:use, "xlink:href": Routes.static_path(conn, "/images/icon-sprite.svg#" <> name))
    end
  end
end
