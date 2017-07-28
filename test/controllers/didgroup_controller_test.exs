defmodule A2billingRestApi.DidgroupControllerTest do
  use A2billingRestApi.ConnCase

  alias A2billingRestApi.Didgroup
  alias A2billingRestApi.Repo

  @valid_attrs %{didgroupname: "some content"}
  @invalid_attrs %{didgroupname: nil}

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
    conn = get(conn, didgroup_path(conn, :index)) |> doc
    assert json_response(conn, 200)["data"] == []
  end

  test "shows chosen resource", %{conn: conn} do
    didgroup = Repo.insert! %Didgroup{didgroupname: "some name"}
    conn = get(conn, didgroup_path(conn, :show, didgroup)) |> doc
    data = json_response(conn, 200)["data"]
    assert data["id"] == "#{didgroup.id}"
    assert data["type"] == "didgroup"
    assert data["attributes"]["didgroupname"] == didgroup.didgroupname
  end

  test "does not show resource and instead throw error when id is nonexistent", %{conn: conn} do
    assert_error_sent 404, fn ->
      get(conn, didgroup_path(conn, :show, -1)) |> doc
    end
  end

  test "creates and renders resource when data is valid", %{conn: conn} do
    conn = post(conn, didgroup_path(conn, :create), %{
      "meta" => %{},
      "data" => %{
        "type" => "didgroup",
        "attributes" => @valid_attrs,
        "relationships" => relationships
      }
    }) |> doc

    assert json_response(conn, 201)["data"]["id"]
    assert Repo.get_by(Didgroup, @valid_attrs)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post(conn, didgroup_path(conn, :create), %{
      "meta" => %{},
      "data" => %{
        "type" => "didgroup",
        "attributes" => @invalid_attrs,
        "relationships" => relationships
      }
    }) |> doc

    assert json_response(conn, 422)["errors"] != %{}
  end

  test "updates and renders chosen resource when data is valid", %{conn: conn} do
    didgroup = Repo.insert! %Didgroup{didgroupname: "some name"}
    conn = put(conn, didgroup_path(conn, :update, didgroup), %{
      "meta" => %{},
      "data" => %{
        "type" => "didgroup",
        "id" => didgroup.id,
        "attributes" => @valid_attrs,
        "relationships" => relationships
      }
    }) |> doc

    assert json_response(conn, 200)["data"]["id"]
    assert Repo.get_by(Didgroup, @valid_attrs)
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    didgroup = Repo.insert! %Didgroup{didgroupname: "some name"}
    conn = put(conn, didgroup_path(conn, :update, didgroup), %{
      "meta" => %{},
      "data" => %{
        "type" => "didgroup",
        "id" => didgroup.id,
        "attributes" => @invalid_attrs,
        "relationships" => relationships
      }
    }) |> doc

    assert json_response(conn, 422)["errors"] != %{}
  end

  test "deletes chosen resource", %{conn: conn} do
    didgroup = Repo.insert! %Didgroup{didgroupname: "some name"}
    conn = delete(conn, didgroup_path(conn, :delete, didgroup)) |> doc
    assert response(conn, 204)
    refute Repo.get(Didgroup, didgroup.id)
  end

end
