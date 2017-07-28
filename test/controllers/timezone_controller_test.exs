defmodule A2billingRestApi.TimezoneControllerTest do
  use A2billingRestApi.ConnCase

  alias A2billingRestApi.Timezone
  alias A2billingRestApi.Repo

  @valid_attrs %{gmtoffset: 1, gmttime: "some content", gmtzone: "some content"}
  @invalid_attrs %{}

  setup do
    conn = build_conn()
      |> put_req_header("accept", "application/vnd.api+json")
      |> put_req_header("content-type", "application/vnd.api+json")

    {:ok, conn: conn}
  end

  defp relationships do
    %{}
  end

  test "lists all entries on index", %{conn: conn} do
    conn = conn |> get(timezone_path(conn, :index)) |> doc()
    assert json_response(conn, 200)["data"] == []
  end

  test "shows chosen resource", %{conn: conn} do
    timezone = Repo.insert! %Timezone{}
    conn = conn |> get(timezone_path(conn, :show, timezone)) |> doc()
    data = json_response(conn, 200)["data"]
    assert data["id"] == "#{timezone.id}"
    assert data["type"] == "timezone"
    assert data["attributes"]["gmtzone"] == timezone.gmtzone
    assert data["attributes"]["gmttime"] == timezone.gmttime
  end

  test "does not show resource and instead throw error when id is nonexistent", %{conn: conn} do
    assert_error_sent 404, fn ->
      conn |> get(timezone_path(conn, :show, -1)) |> doc
    end
  end

  test "creates and renders resource when data is valid", %{conn: conn} do
    conn = conn |> post(timezone_path(conn, :create), %{
      "meta" => %{},
      "data" => %{
        "type" => "timezone",
        "attributes" => @valid_attrs,
        "relationships" => relationships
      }
    }) |> doc()

    assert json_response(conn, 201)["data"]["id"]
    assert Repo.get_by(Timezone, @valid_attrs)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post(conn, timezone_path(conn, :create), %{
      "meta" => %{},
      "data" => %{
        "type" => "timezone",
        "attributes" => @invalid_attrs,
        "relationships" => relationships
      }
    }) |> doc

    assert json_response(conn, 422)["errors"] != %{}
  end

  test "updates and renders chosen resource when data is valid", %{conn: conn} do
    timezone = Repo.insert! %Timezone{}
    conn = put(conn, timezone_path(conn, :update, timezone), %{
      "meta" => %{},
      "data" => %{
        "type" => "timezone",
        "id" => timezone.id,
        "attributes" => @valid_attrs,
        "relationships" => relationships
      }
    }) |> doc

    assert json_response(conn, 200)["data"]["id"]
    assert Repo.get_by(Timezone, @valid_attrs)
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    timezone = Repo.insert! %Timezone{}
    conn = put(conn, timezone_path(conn, :update, timezone), %{
      "meta" => %{},
      "data" => %{
        "type" => "timezone",
        "id" => timezone.id,
        "attributes" => @invalid_attrs,
        "relationships" => relationships
      }
    })|> doc

    assert json_response(conn, 422)["errors"] != %{}
  end

  test "deletes chosen resource", %{conn: conn} do
    timezone = Repo.insert! %Timezone{}
    conn = delete(conn, timezone_path(conn, :delete, timezone)) |> doc
    assert response(conn, 204)
    refute Repo.get(Timezone, timezone.id)
  end

end
