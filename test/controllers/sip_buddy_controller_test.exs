defmodule A2billingRestApi.SipBuddyControllerTest do
  use A2billingRestApi.ConnCase

  import A2billingRestApi.Factory

  alias A2billingRestApi.SipBuddy
  alias A2billingRestApi.Repo

  @invalid_attrs %{name: nil}

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
    card = insert :card

    %{
      "card" => %{
        "data" => %{
          "type" => "card",
          "id" => card.id
        }
      },
    }
  end

  test "lists all entries on index", %{conn: conn} do
    conn = get conn, sip_buddy_path(conn, :index)
    assert json_response(conn, 200)["data"] == []
  end

  test "shows chosen resource", %{conn: conn} do
    sip_buddies = insert :sip_buddy
    conn = get conn, sip_buddy_path(conn, :show, sip_buddies)
    data = json_response(conn, 200)["data"]
    assert data["id"] == "#{sip_buddies.id}"
    assert data["type"] == "sip_buddy"
    assert data["attributes"]["id_cc_card"] == sip_buddies.id_cc_card
    assert data["attributes"]["name"] == sip_buddies.name
    assert data["attributes"]["accountcode"] == sip_buddies.accountcode
    assert data["attributes"]["regexten"] == sip_buddies.regexten
    assert data["attributes"]["amaflags"] == sip_buddies.amaflags
    assert data["attributes"]["callerid"] == sip_buddies.callerid
    assert data["attributes"]["canreinvite"] == sip_buddies.canreinvite
    assert data["attributes"]["context"] == sip_buddies.context
    assert data["attributes"]["fromuser"] == sip_buddies.fromuser
    assert data["attributes"]["fromdomain"] == sip_buddies.fromdomain
    assert data["attributes"]["host"] == sip_buddies.host
    assert data["attributes"]["insecure"] == sip_buddies.insecure
    assert data["attributes"]["language"] == sip_buddies.language
    assert data["attributes"]["mailbox"] == sip_buddies.mailbox
    assert data["attributes"]["md5secret"] == sip_buddies.md5secret
    assert data["attributes"]["nat"] == sip_buddies.nat
    assert data["attributes"]["deny"] == sip_buddies.deny
    assert data["attributes"]["permit"] == sip_buddies.permit
    assert data["attributes"]["mask"] == sip_buddies.mask
    assert data["attributes"]["pickupgroup"] == sip_buddies.pickupgroup
    assert data["attributes"]["qualify"] == sip_buddies.qualify
    assert data["attributes"]["restrictcid"] == sip_buddies.restrictcid
    assert data["attributes"]["rtptimeout"] == sip_buddies.rtptimeout
    assert data["attributes"]["rtpholdtimeout"] == sip_buddies.rtpholdtimeout
    assert data["attributes"]["secret"] == sip_buddies.secret
    assert data["attributes"]["username"] == sip_buddies.username
    assert data["attributes"]["disallow"] == sip_buddies.disallow
    assert data["attributes"]["allow"] == sip_buddies.allow
    assert data["attributes"]["musiconhold"] == sip_buddies.musiconhold
    assert data["attributes"]["regseconds"] == sip_buddies.regseconds
    assert data["attributes"]["cancallforward"] == sip_buddies.cancallforward
    assert data["attributes"]["fullcontact"] == sip_buddies.fullcontact
    assert data["attributes"]["setvar"] == sip_buddies.setvar
    assert data["attributes"]["regserver"] == sip_buddies.regserver
    assert data["attributes"]["lastms"] == sip_buddies.lastms
    assert data["attributes"]["useragent"] == sip_buddies.useragent
    assert data["attributes"]["callbackextension"] == sip_buddies.callbackextension
  end

  test "does not show resource and instead throw error when id is nonexistent", %{conn: conn} do
    assert_error_sent 404, fn ->
      get conn, sip_buddy_path(conn, :show, -1)
    end
  end

  test "creates and renders resource when data is valid", %{conn: conn} do
    valid_attrs = params_for(:sip_buddy)
    conn = post conn, sip_buddy_path(conn, :create), %{
      "meta" => %{},
      "data" => %{
        "type" => "sip_buddy",
        "attributes" => valid_attrs,
        "relationships" => relationships
      }
    }

    assert json_response(conn, 201)["data"]["id"]
    assert Repo.get_by(SipBuddy, valid_attrs)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post conn, sip_buddy_path(conn, :create), %{
      "meta" => %{},
      "data" => %{
        "type" => "sip_buddy",
        "attributes" => @invalid_attrs,
        "relationships" => relationships
      }
    }

    assert json_response(conn, 422)["errors"] != %{}
  end

  test "updates and renders chosen resource when data is valid", %{conn: conn} do
    valid_attrs = params_for(:sip_buddy)
    sip_buddies = insert :sip_buddy
    conn = put conn, sip_buddy_path(conn, :update, sip_buddies), %{
      "meta" => %{},
      "data" => %{
        "type" => "sip_buddy",
        "id" => sip_buddies.id,
        "attributes" => valid_attrs,
        "relationships" => relationships
      }
    }

    assert json_response(conn, 200)["data"]["id"]
    assert Repo.get_by(SipBuddy, valid_attrs)
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    sip_buddies = insert :sip_buddy
    conn = put conn, sip_buddy_path(conn, :update, sip_buddies), %{
      "meta" => %{},
      "data" => %{
        "type" => "sip_buddy",
        "id" => sip_buddies.id,
        "attributes" => @invalid_attrs,
        "relationships" => relationships
      }
    }

    assert json_response(conn, 422)["errors"] != %{}
  end

  test "deletes chosen resource", %{conn: conn} do
    sip_buddies = insert :sip_buddy
    conn = delete conn, sip_buddy_path(conn, :delete, sip_buddies)
    assert response(conn, 204)
    refute Repo.get(SipBuddy, sip_buddies.id)
  end
end
