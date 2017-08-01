defmodule A2billingRestApi.SipBuddyTest do
  use A2billingRestApi.ModelCase

  alias A2billingRestApi.SipBuddy

  @valid_attrs %{DEFAULTip: "some content", regserver: "some content", mailbox: "some content", insecure: "some content", callgroup: "some content", pickupgroup: "some content", qualify: "some content", name: "some content", context: "some content", regseconds: 42, fullcontact: "some content", cancallforward: "some content", allow: "some content", callerid: "some content", type: "some content", amaflags: "some content", deny: "some content", useragent: "some content", rtptimeout: "some content", host: "some content", port: "some content", canreinvite: "some content", fromdomain: "some content", musiconhold: "some content", disallow: "some content", nat: "some content", lastms: "some content", username: "some content", secret: "some content", mask: "some content", rtpholdtimeout: "some content", dtmfmode: "some content", accountcode: "some content", setvar: "some content", language: "some content", restrictcid: "some content", regexten: "some content", md5secret: "some content", ipaddr: "some content", callbackextension: "some content", fromuser: "some content", permit: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = SipBuddy.changeset(%SipBuddy{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = SipBuddy.changeset(%SipBuddy{}, @invalid_attrs)
    refute changeset.valid?
  end
end
