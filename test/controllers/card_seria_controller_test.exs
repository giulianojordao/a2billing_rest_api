defmodule A2billingRestApi.CardSeriaControllerTest do
  use A2billingRestApi.ConnCase

  alias A2billingRestApi.CardSeria
  alias A2billingRestApi.Repo

  @valid_attrs %{description: "some content", name: "some content", value: 42}
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
    conn = get conn, card_seria_path(conn, :index)
    assert json_response(conn, 200)["data"] == []
  end

  test "shows chosen resource", %{conn: conn} do
    card_seria = Repo.insert! %CardSeria{}
    conn = get conn, card_seria_path(conn, :show, card_seria)
    data = json_response(conn, 200)["data"]
    assert data["id"] == "#{card_seria.id}"
    assert data["type"] == "card-seria"
    assert data["attributes"]["name"] == card_seria.name
    assert data["attributes"]["description"] == card_seria.description
    assert data["attributes"]["value"] == card_seria.value
  end

  test "does not show resource and instead throw error when id is nonexistent", %{conn: conn} do
    assert_error_sent 404, fn ->
      get conn, card_seria_path(conn, :show, -1)
    end
  end

  test "creates and renders resource when data is valid", %{conn: conn} do
    conn = post conn, card_seria_path(conn, :create), %{
      "meta" => %{},
      "data" => %{
        "type" => "card_seria",
        "attributes" => @valid_attrs,
        "relationships" => relationships
      }
    }

    assert json_response(conn, 201)["data"]["id"]
    assert Repo.get_by(CardSeria, @valid_attrs)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post conn, card_seria_path(conn, :create), %{
      "meta" => %{},
      "data" => %{
        "type" => "card_seria",
        "attributes" => @invalid_attrs,
        "relationships" => relationships
      }
    }

    assert json_response(conn, 422)["errors"] != %{}
  end

  test "updates and renders chosen resource when data is valid", %{conn: conn} do
    card_seria = Repo.insert! %CardSeria{}
    conn = put conn, card_seria_path(conn, :update, card_seria), %{
      "meta" => %{},
      "data" => %{
        "type" => "card_seria",
        "id" => card_seria.id,
        "attributes" => @valid_attrs,
        "relationships" => relationships
      }
    }

    assert json_response(conn, 200)["data"]["id"]
    assert Repo.get_by(CardSeria, @valid_attrs)
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    card_seria = Repo.insert! %CardSeria{}
    conn = put conn, card_seria_path(conn, :update, card_seria), %{
      "meta" => %{},
      "data" => %{
        "type" => "card_seria",
        "id" => card_seria.id,
        "attributes" => @invalid_attrs,
        "relationships" => relationships
      }
    }

    assert json_response(conn, 422)["errors"] != %{}
  end

  test "deletes chosen resource", %{conn: conn} do
    card_seria = Repo.insert! %CardSeria{}
    conn = delete conn, card_seria_path(conn, :delete, card_seria)
    assert response(conn, 204)
    refute Repo.get(CardSeria, card_seria.id)
  end

end
