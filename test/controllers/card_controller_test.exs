defmodule A2billingRestApi.CardControllerTest do
  use A2billingRestApi.ConnCase

  import A2billingRestApi.Factory

  alias A2billingRestApi.Card
  alias A2billingRestApi.Repo

  @invalid_attrs %{username: nil}

  setup do
    user = insert :user

    conn = build_conn()
      |> put_req_header("accept", "application/vnd.api+json")
      |> put_req_header("content-type", "application/vnd.api+json")
      |> Guardian.Plug.api_sign_in(
        user,
        :token,
        perms: %{default: [:read, :write]}
      )
    {:ok, conn: conn}
  end

  defp relationships do
    didgroup = insert :didgroup
    timezone = Repo.insert!(%A2billingRestApi.Timezone{})
    group    = insert :card_group
    seria    = insert :card_seria

    %{
      "didgroup" => %{
        "data" => %{
          "type" => "didgroup",
          "id" => didgroup.id
        }
      },
      "timezone" => %{
        "data" => %{
          "type" => "timezone",
          "id" => timezone.id
        }
      },
      "group" => %{
        "data" => %{
          "type" => "group",
          "id" => group.id
        }
      },
      "seria" => %{
        "data" => %{
          "type" => "seria",
          "id" => seria.id
        }
      },
    }
  end

  test "lists all entries on index", %{conn: conn} do
    conn = get(conn, card_path(conn, :index)) |> doc
    assert json_response(conn, 200)["data"] == []
  end

  test "shows chosen resource", %{conn: conn} do
    card = insert :card
    conn = get(conn, card_path(conn, :show, card)) |> doc
    data = json_response(conn, 200)["data"]
    assert data["id"] == "#{card.id}"
    assert data["type"] == "card"
    assert data["attributes"]["username"] == card.username
    assert data["attributes"]["useralias"] == card.useralias
    assert data["attributes"]["uipass"] == card.uipass
    assert data["attributes"]["lastname"] == card.lastname
    assert data["attributes"]["firstname"] == card.firstname
    assert data["attributes"]["address"] == card.address
    assert data["attributes"]["city"] == card.city
    assert data["attributes"]["state"] == card.state
    assert data["attributes"]["country"] == card.country
    assert data["attributes"]["zipcode"] == card.zipcode
    assert data["attributes"]["phone"] == card.phone
    assert data["attributes"]["email"] == card.email
    assert data["attributes"]["fax"] == card.fax
    assert data["attributes"]["redial"] == card.redial
    assert data["attributes"]["loginkey"] == card.loginkey
    assert data["attributes"]["tag"] == card.tag
    assert data["attributes"]["company-name"] == card.company_name
    assert data["attributes"]["company-website"] == card.company_website
  end

  test "does not show resource and instead throw error when id is nonexistent", %{conn: conn} do
    assert_error_sent 404, fn ->
      get(conn, card_path(conn, :show, -1)) |> doc
    end
  end

  test "creates and renders resource when data is valid", %{conn: conn} do
    valid_attrs = params_for(:card)
    conn = post(conn, card_path(conn, :create), %{
      "meta" => %{},
      "data" => %{
        "type" => "card",
        "attributes" => valid_attrs,
        "relationships" => relationships
      }
    }) |> doc

    assert json_response(conn, 201)["data"]["id"]
    assert Repo.get_by!(A2billingRestApi.SipBuddy, id_cc_card: json_response(conn, 201)["data"]["id"])
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post(conn, card_path(conn, :create), %{
      "meta" => %{},
      "data" => %{
        "type" => "card",
        "attributes" => @invalid_attrs,
        "relationships" => relationships
      }
    }) |> doc

    assert json_response(conn, 422)["errors"] != %{}
  end

  test "updates and renders chosen resource when data is valid", %{conn: conn} do
    valid_attrs = params_for(:card)
    card = insert :card
    conn = put(conn, card_path(conn, :update, card), %{
      "meta" => %{},
      "data" => %{
        "type" => "card",
        "id" => card.id,
        "attributes" => valid_attrs,
        "relationships" => relationships
      }
    }) |> doc

    assert json_response(conn, 200)["data"]["id"]
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    card = insert :card
    conn = put(conn, card_path(conn, :update, card), %{
      "meta" => %{},
      "data" => %{
        "type" => "card",
        "id" => card.id,
        "attributes" => @invalid_attrs,
        "relationships" => relationships
      }
    }) |> doc

    assert json_response(conn, 422)["errors"] != %{}
  end

  test "deletes chosen resource", %{conn: conn} do
    card = insert :card
    conn = delete(conn, card_path(conn, :delete, card)) |> doc
    assert response(conn, 204)
    refute Repo.get(Card, card.id)
  end

end
