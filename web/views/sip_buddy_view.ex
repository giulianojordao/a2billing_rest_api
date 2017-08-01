defmodule A2billingRestApi.SipBuddyView do
  use A2billingRestApi.Web, :view
  use JaSerializer.PhoenixView

  attributes [:name, :accountcode, :regexten, :amaflags, :callgroup, :callerid, :canreinvite, :context, :DEFAULTip,
              :dtmfmode, :fromuser, :fromdomain, :host, :insecure, :language, :mailbox, :md5secret, :nat, :deny,
              :permit, :mask, :pickupgroup, :port, :qualify, :restrictcid, :rtptimeout, :rtpholdtimeout, :secret,
              :username, :disallow, :allow, :musiconhold, :regseconds, :ipaddr, :cancallforward, :fullcontact,
              :setvar, :regserver, :lastms, :useragent, :callbackextension]

  has_one :card,
    field: :id_cc_card_id,
    type: "card"

  def type(_data, _conn), do: "sip_buddy"
end
