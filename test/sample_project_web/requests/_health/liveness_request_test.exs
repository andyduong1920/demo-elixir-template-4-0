defmodule SampleProjectWeb.LivenessRequestTest do
  use SampleProjectWeb.ConnCase, async: true

  test "returns 200", %{conn: conn} do
    conn =
      get(
        conn,
        "#{Application.get_env(:sample_project, SampleProjectWeb.Endpoint)[:health_path]}/liveness"
      )

    assert response(conn, :ok) =~ "alive"
  end
end
