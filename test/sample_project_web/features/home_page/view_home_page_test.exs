defmodule SampleProjectWeb.HomePage.ViewHomePageTest do
  use SampleProjectWeb.FeatureCase

  feature "view home page", %{session: session} do
    visit(session, Routes.page_path(SampleProjectWeb.Endpoint, :index))

    assert_has(session, Query.text("Welcome to Phoenix!"))
  end
end
