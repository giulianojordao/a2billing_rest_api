defmodule A2billingRestApi.CardControllerTest do
  use A2billingRestApi.ConnCase

  alias A2billingRestApi.Card
  alias A2billingRestApi.Repo

  @valid_attrs %{discountdecimal: "some content", email_notification: "some content", invoiceday: 42,
                 city: "some content", expirationdate: %{day: 17, hour: 14, min: 0, month: 4, sec: 0, year: 2010},
                 useralias: "some content", currency: "some content", credit_notification: 42, redial: "some content",
                 activated: "f", tariff: 42, vat: "120.5", fax: "some content", iax_buddy: 42,
                 email: "some content", simultaccess: 42, company_website: "some content",
                 lock_date: %{day: 17, hour: 14, min: 0, month: 4, sec: 0, year: 2010},
                 voicemail_permitted: 42, status: 42, loginkey: "some content", traffic_target: "some content",
                 enableexpire: 42, company_name: "some content", lastname: "some content", restriction: 42, serial: 42,
                 zipcode: "some content", creditlimit: 42, country: "RUS", phone: "1232131",
                 firstusedate: %{day: 17, hour: 14, min: 0, month: 4, sec: 0, year: 2010}, runservice: 42,
                 tag: "some content", initialbalance: "120.5", voicemail_activated: 42, inuse: 42,
                 firstname: "some content", typepaid: 42, language: "some content", mac_addr: "some content", block: 42,
                 state: "some content", username: "some content", sip_buddy: 42, address: "some content",
                 credit: "120.5", num_trials_done: 42, uipass: "some content", lock_pin: "some content"}

  @invalid_attrs %{}

  setup do
    conn = build_conn()
      |> put_req_header("accept", "application/vnd.api+json")
      |> put_req_header("content-type", "application/vnd.api+json")

    {:ok, conn: conn}
  end

  defp relationships do
    didgroup = Repo.insert!(%A2billingRestApi.Didgroup{})
    timezone = Repo.insert!(%A2billingRestApi.Timezone{})
    group = Repo.insert!(%A2billingRestApi.CardGroup{})
    seria = Repo.insert!(%A2billingRestApi.CardSeria{})

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
    card = Repo.insert! %Card{}
    conn = get conn, card_path(conn, :show, card)
    data = json_response(conn, 200)["data"]
    assert data["id"] == "#{card.id}"
    assert data["type"] == "card"
    assert data["attributes"]["expiredays"] == card.expiredays
    assert data["attributes"]["username"] == card.username
    assert data["attributes"]["useralias"] == card.useralias
    assert data["attributes"]["uipass"] == card.uipass
    assert data["attributes"]["credit"] == card.credit
    assert data["attributes"]["tariff"] == card.tariff
    assert data["attributes"]["activated"] == card.activated
    assert data["attributes"]["status"] == card.status
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
    assert data["attributes"]["inuse"] == card.inuse
    assert data["attributes"]["simultaccess"] == card.simultaccess
    assert data["attributes"]["currency"] == card.currency
    assert data["attributes"]["lastuse"] == card.lastuse
    assert data["attributes"]["nbused"] == card.nbused
    assert data["attributes"]["typepaid"] == card.typepaid
    assert data["attributes"]["creditlimit"] == card.creditlimit
    assert data["attributes"]["voipcall"] == card.voipcall
    assert data["attributes"]["sip_buddy"] == card.sip_buddy
    assert data["attributes"]["iax_buddy"] == card.iax_buddy
    assert data["attributes"]["language"] == card.language
    assert data["attributes"]["redial"] == card.redial
    assert data["attributes"]["runservice"] == card.runservice
    assert data["attributes"]["nbservice"] == card.nbservice
    assert data["attributes"]["num_trials_done"] == card.num_trials_done
    assert data["attributes"]["vat"] == card.vat
    assert data["attributes"]["servicelastrun"] == card.servicelastrun
    assert data["attributes"]["initialbalance"] == card.initialbalance
    assert data["attributes"]["invoiceday"] == card.invoiceday
    assert data["attributes"]["autorefill"] == card.autorefill
    assert data["attributes"]["loginkey"] == card.loginkey
    assert data["attributes"]["mac_addr"] == card.mac_addr
    assert data["attributes"]["tag"] == card.tag
    assert data["attributes"]["voicemail_permitted"] == card.voicemail_permitted
    assert data["attributes"]["voicemail_activated"] == card.voicemail_activated
    assert data["attributes"]["last_notification"] == card.last_notification
    assert data["attributes"]["email_notification"] == card.email_notification
    assert data["attributes"]["notify_email"] == card.notify_email
    assert data["attributes"]["credit_notification"] == card.credit_notification
    assert data["attributes"]["company_name"] == card.company_name
    assert data["attributes"]["company_website"] == card.company_website
    assert data["attributes"]["vat_rn"] == card.vat_rn
    assert data["attributes"]["traffic"] == card.traffic
    assert data["attributes"]["traffic_target"] == card.traffic_target
    assert data["attributes"]["discountdecimal"] == card.discountdecimal
    assert data["attributes"]["restriction"] == card.restriction
    assert data["attributes"]["serial"] == card.serial
    assert data["attributes"]["block"] == card.block
    assert data["attributes"]["lock_pin"] == card.lock_pin
    assert data["attributes"]["lock_date"] == card.lock_date
    assert data["attributes"]["max_concurrent"] == card.max_concurrent
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
    card = Repo.insert! %Card{}
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
    card = Repo.insert! %Card{}
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
    card = Repo.insert! %Card{}
    conn = delete conn, card_path(conn, :delete, card)
    assert response(conn, 204)
    refute Repo.get(Card, card.id)
  end

end
