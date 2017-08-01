defmodule A2billingRestApi.SipBuddy do
  use A2billingRestApi.Web, :model

  schema "cc_sip_buddies" do
    field :name, :string
    field :accountcode, :string
    field :regexten, :string
    field :amaflags, :string, default: "billing"
    field :callgroup, :string
    field :callerid, :string
    field :canreinvite, :string, default: "YES"
    field :context, :string, default: "a2billing"
    field :DEFAULTip, :string
    field :dtmfmode, :string, default: "RFC2833"
    field :fromuser, :string, default: ""
    field :fromdomain, :string, default: ""
    field :host, :string, default: "dynamic"
    field :insecure, :string, default: "insecure"
    field :language, :string
    field :mailbox, :string, default: ""
    field :md5secret, :string, default: ""
    field :nat, :string, default: "YES"
    field :deny, :string, default: ""
    field :permit, :string, default: ""
    field :mask, :string, default: ""
    field :pickupgroup, :string
    field :port, :string
    field :qualify, :string
    field :restrictcid, :string
    field :rtptimeout, :string
    field :rtpholdtimeout, :string
    field :secret, :string, default: ""
    field :type, :string, default: "friend"
    field :username, :string
    field :disallow, :string, default:  "ALL"
    field :allow, :string, default: "ulaw,alaw,gsm,g729"
    field :musiconhold, :string, default: ""
    field :regseconds, :integer
    field :ipaddr, :string
    field :cancallforward, :string, default: "yes"
    field :fullcontact, :string, default: ""
    field :setvar, :string, default: ""
    field :regserver, :string
    field :lastms, :string
    field :useragent, :string
    field :callbackextension, :string

    belongs_to :card, A2billingRestApi.Card, foreign_key: :id_cc_card
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :accountcode, :regexten, :amaflags, :callgroup, :callerid, :canreinvite, :context,
                     :DEFAULTip, :dtmfmode, :fromuser, :fromdomain, :host, :insecure, :language, :mailbox, :md5secret,
                     :nat, :deny, :permit, :mask, :pickupgroup, :port, :qualify, :restrictcid, :rtptimeout,
                     :rtpholdtimeout, :secret, :type, :username, :disallow, :allow, :musiconhold, :regseconds, :ipaddr,
                     :cancallforward, :fullcontact, :setvar, :regserver, :lastms, :useragent, :callbackextension])
    |> validate_required([:name, :accountcode, :regexten, :callerid, :canreinvite, :host, :insecure, :username, :allow,
                          :cancallforward])
  end
end
