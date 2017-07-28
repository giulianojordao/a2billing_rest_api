defmodule A2billingRestApi.CardGroupControllerTest do
  use A2billingRestApi.ConnCase

  import A2billingRestApi.Factory

  alias A2billingRestApi.CardGroup
  alias A2billingRestApi.Repo

  @valid_attrs %{description: "some content", name: "some content", users_perms: 42}
  @invalid_attrs %{name: nil}

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
    conn = get(conn, card_group_path(conn, :index)) |> doc
    assert json_response(conn, 200)["data"] == []
  end

  test "shows chosen resource", %{conn: conn} do
    card_group = insert(:card_group)
    conn = get(conn, card_group_path(conn, :show, card_group)) |> doc
    data = json_response(conn, 200)["data"]
    assert data["id"] == "#{card_group.id}"
    assert data["type"] == "card-group"
    assert data["attributes"]["name"] == card_group.name
    assert data["attributes"]["description"] == card_group.description
  end

  test "does not show resource and instead throw error when id is nonexistent", %{conn: conn} do
    assert_error_sent 404, fn ->
      get(conn, card_group_path(conn, :show, -1)) |> doc
    end
  end

  test "creates and renders resource when data is valid", %{conn: conn} do
    conn = post(conn, card_group_path(conn, :create), %{
      "meta" => %{},
      "data" => %{
        "type" => "card_group",
        "attributes" => @valid_attrs,
        "relationships" => relationships
      }
    }) |> doc

    assert json_response(conn, 201)["data"]["id"]
    assert Repo.get_by(CardGroup, @valid_attrs)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post(conn, card_group_path(conn, :create), %{
      "meta" => %{},
      "data" => %{
        "type" => "card_group",
        "attributes" => @invalid_attrs,
        "relationships" => relationships
      }
    }) |> doc

    assert json_response(conn, 422)["errors"] != %{}
  end

  test "updates and renders chosen resource when data is valid", %{conn: conn} do
    card_group = insert :card_group
    conn = put(conn, card_group_path(conn, :update, card_group), %{
      "meta" => %{},
      "data" => %{
        "type" => "card_group",
        "id" => card_group.id,
        "attributes" => @valid_attrs,
        "relationships" => relationships
      }
    }) |> doc

    assert json_response(conn, 200)["data"]["id"]
    assert Repo.get_by(CardGroup, @valid_attrs)
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    card_group = insert :card_group
    conn = put(conn, card_group_path(conn, :update, card_group), %{
      "meta" => %{},
      "data" => %{
        "type" => "card_group",
        "id" => card_group.id,
        "attributes" => @invalid_attrs,
        "relationships" => relationships
      }
    }) |> doc

    assert json_response(conn, 422)["errors"] != %{}
  end

  test "deletes chosen resource", %{conn: conn} do
    card_group = insert :card_group
    conn = delete(conn, card_group_path(conn, :delete, card_group)) |> doc
    assert response(conn, 204)
    refute Repo.get(CardGroup, card_group.id)
  end

end
