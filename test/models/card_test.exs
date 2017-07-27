defmodule A2billingRestApi.CardTest do
  use A2billingRestApi.ModelCase

  alias A2billingRestApi.Card

  @valid_attrs %{discountdecimal: "some content", email_notification: "some content", invoiceday: 42,
                 city: "some content", expirationdate: %{day: 17, hour: 14, min: 0, month: 4, sec: 0, year: 2010},
                 useralias: "some content", currency: "some content", credit_notification: 42, redial: "some content",
                 activated: "f", tariff: 42, vat: "120.5", fax: "some content", iax_buddy: 42,
                 email: "some content", simultaccess: 42, company_website: "some content",                 
                 voicemail_permitted: 42, status: 42, loginkey: "some content", traffic_target: "some content",
                 enableexpire: 42, company_name: "some content", lastname: "some content", restriction: 42, serial: 42,
                 zipcode: "some content", creditlimit: 42, country: "RUS", phone: "1232131",
                 firstusedate: %{day: 17, hour: 14, min: 0, month: 4, sec: 0, year: 2010}, runservice: 42,
                 tag: "some content", initialbalance: "120.5", voicemail_activated: 42, inuse: 42,
                 firstname: "some content", typepaid: 42, language: "some content", mac_addr: "some content", block: 42,
                 state: "some content", username: "some content", sip_buddy: 42, address: "some content",
                 credit: "120.5", num_trials_done: 42, uipass: "some content", lock_pin: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Card.changeset(%Card{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Card.changeset(%Card{}, @invalid_attrs)
    refute changeset.valid?
  end
end
