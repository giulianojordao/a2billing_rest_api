defmodule A2billingRestApi.TokenControllerTest do
  use A2billingRestApi.ConnCase

  import A2billingRestApi.Factory

  alias A2billingRestApi.User
  alias A2billingRestApi.Repo

  setup do
    conn = build_conn()
      |> put_req_header("accept", "application/vnd.api+json")
      |> put_req_header("content-type", "application/vnd.api+json")
      
    {:ok, conn: conn}
  end

  test "creates JWT token for existing user with correct password", %{conn: conn} do
    user = insert :user
    conn = conn
    |> post(token_path(conn, :create), %{data: %{username: user.username, password: user.password}})
    |> doc

    assert json_response(conn, 200)
  end
end
