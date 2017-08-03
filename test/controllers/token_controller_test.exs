defmodule A2billingRestApi.TokenControllerTest do
  use A2billingRestApi.ConnCase

  import A2billingRestApi.Factory

  alias A2billingRestApi.ApiUser
  alias A2billingRestApi.Repo

  setup do
    conn = build_conn()
      |> put_req_header("accept", "application/vnd.api+json")
      |> put_req_header("content-type", "application/vnd.api+json")

    {:ok, conn: conn}
  end

  test "creates JWT token for existing user with correct password", %{conn: conn} do
    { :ok, user } = ApiUser.changeset(%ApiUser{}, params_for(:user)) |> Repo.insert

    conn = conn
    |> post(token_path(conn, :create), %{data: %{email: user.email, password: user.password}})
    |> doc

    assert json_response(conn, 200)
  end

  test "returs 401 status if password is incorrect", %{conn: conn} do
    { :ok, user } = ApiUser.changeset(%ApiUser{}, params_for(:user)) |> Repo.insert

    conn = conn
    |> post(token_path(conn, :create), %{data: %{email: user.email, password: "fakepassword"}})
    |> doc

    assert json_response(conn, 401)
  end

  test "returs 404 status if user not found", %{conn: conn} do
    { :ok, user } = ApiUser.changeset(%ApiUser{}, params_for(:user)) |> Repo.insert

    conn = conn
    |> post(token_path(conn, :create), %{data: %{email: "fake@email.com", password: user.password}})
    |> doc

    assert json_response(conn, 404)
  end
end
