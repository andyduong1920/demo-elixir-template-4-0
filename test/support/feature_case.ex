defmodule SampleProjectWeb.FeatureCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney
      use Wallaby.Feature
      use Mimic

      import SampleProject.Factory
      import SampleProjectWeb.Gettext

      alias SampleProject.Repo
      alias SampleProjectWeb.Endpoint
      alias SampleProjectWeb.Router.Helpers, as: Routes

      @moduletag :feature_test
    end
  end
end
