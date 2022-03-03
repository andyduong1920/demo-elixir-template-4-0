defmodule SampleProject.Repo do
  use Ecto.Repo,
    otp_app: :sample_project,
    adapter: Ecto.Adapters.Postgres
end
