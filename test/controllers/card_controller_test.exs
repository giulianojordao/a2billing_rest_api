defmodule A2billingRestApi.CardControllerTest do
  use A2billingRestApi.ConnCase

  import A2billingRestApi.Factory

  alias A2billingRestApi.Card
  alias A2billingRestApi.Repo

  @valid_attrs %{discount: "10.0", email_notification: "some content", invoiceday: 42,
                 city: "some content", expirationdate: %{day: 17, hour: 14, min: 0, month: 4, sec: 0, year: 2010},
                 useralias: "some content", currency: "USD", credit_notification: 42, redial: "some content",
                 activated: "f", tariff: 42, vat: "120.5", fax: "some content", iax_buddy: 42,
                 email: "some content", simultaccess: 42, company_website: "some content",
                 voicemail_permitted: 42, status: 42, loginkey: "some content", traffic_target: "some content",
                 enableexpire: 42, company_name: "some content", lastname: "some content", restriction: 42, serial: 42,
                 zipcode: "some content", creditlimit: 42, country: "RUS", phone: "1232131",
                 firstusedate: %{day: 17, hour: 14, min: 0, month: 4, sec: 0, year: 2010}, runservice: 42,
                 tag: "some content", initialbalance: "120.5", voicemail_activated: 42, inuse: 42,
                 firstname: "some content", typepaid: 42, language: "en", mac_addr: "some content",
                 state: "some content", username: "some content", sip_buddy: 42, address: "some content",
                 credit: "120.5", num_trials_done: 42, uipass: "some content"}

  @invalid_attrs %{}

  setup do
    conn = build_conn()
      |> put_req_header("accept", "application/vnd.api+json")
      |> put_req_header("content-type", "application/vnd.api+json")

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
    conn = get conn, card_path(conn, :index)
    assert json_response(conn, 200)["data"] == []
  end

  test "shows chosen resource", %{conn: conn} do
    card = insert :card
    conn = get conn, card_path(conn, :show, card)
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
      get conn, card_path(conn, :show, -1)
    end
  end

  test "creates and renders resource when data is valid", %{conn: conn} do
    conn = post conn, card_path(conn, :create), %{
      "meta" => %{},
      "data" => %{
        "type" => "card",
        "attributes" => @valid_attrs,
        "relationships" => relationships
      }
    }

    assert json_response(conn, 201)["data"]["id"]
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post conn, card_path(conn, :create), %{
      "meta" => %{},
      "data" => %{
        "type" => "card",
        "attributes" => @invalid_attrs,
        "relationships" => relationships
      }
    }

    assert json_response(conn, 422)["errors"] != %{}
  end

  test "updates and renders chosen resource when data is valid", %{conn: conn} do
    card = insert :card
    conn = put conn, card_path(conn, :update, card), %{
      "meta" => %{},
      "data" => %{
        "type" => "card",
        "id" => card.id,
        "attributes" => @valid_attrs,
        "relationships" => relationships
      }
    }

    assert json_response(conn, 200)["data"]["id"]
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    card = insert :card
    conn = put conn, card_path(conn, :update, card), %{
      "meta" => %{},
      "data" => %{
        "type" => "card",
        "id" => card.id,
        "attributes" => @invalid_attrs,
        "relationships" => relationships
      }
    }

    assert json_response(conn, 422)["errors"] != %{}
  end

  test "deletes chosen resource", %{conn: conn} do
    card = insert :card
    conn = delete conn, card_path(conn, :delete, card)
    assert response(conn, 204)
    refute Repo.get(Card, card.id)
  end

end
