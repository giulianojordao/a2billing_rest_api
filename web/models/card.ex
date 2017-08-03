defmodule A2billingRestApi.Card do
  use A2billingRestApi.Web, :model

  schema "cc_card" do
    field :creationdate, :naive_datetime
    field :firstusedate, :naive_datetime
    field :expirationdate, :naive_datetime
    field :enableexpire, :integer
    field :expiredays, :integer
    field :username, :string
    field :useralias, :string
    field :uipass, :string
    field :credit, :decimal
    field :tariff, :integer
    field :activated, :string
    field :status, :integer
    field :lastname, :string, default: ""
    field :firstname, :string, default: ""
    field :address, :string, default: ""
    field :city, :string, default: ""
    field :state, :string, default: ""
    field :country, :string, default: ""
    field :zipcode, :string, default: ""
    field :phone, :string, default: ""
    field :email, :string, default: ""
    field :fax, :string, default: ""
    field :inuse, :integer
    field :simultaccess, :integer
    field :currency, :string
    field :lastuse, :naive_datetime
    field :nbused, :integer
    field :typepaid, :integer
    field :creditlimit, :integer
    field :voipcall, :integer
    field :sip_buddy, :integer
    field :iax_buddy, :integer
    field :language, :string
    field :redial, :string, default: ""
    field :runservice, :integer
    field :nbservice, :integer
    field :num_trials_done, :integer
    field :vat, :float
    field :servicelastrun, :naive_datetime
    field :initialbalance, :decimal
    field :invoiceday, :integer
    field :autorefill, :integer
    field :loginkey, :string, default: ""
    field :mac_addr, :string
    field :tag, :string, default: ""
    field :voicemail_permitted, :integer
    field :voicemail_activated, :integer
    field :last_notification, :naive_datetime
    field :email_notification, :string, default: ""
    field :notify_email, :integer
    field :credit_notification, :integer
    field :company_name, :string, default: ""
    field :company_website, :string, default: ""
    field :vat_rn, :string
    field :traffic, :integer
    field :traffic_target, :string, default: ""
    field :discount, :decimal
    field :restriction, :integer
    field :serial, :integer

    belongs_to :didgroup, A2billingRestApi.Didgroup,  foreign_key: :id_didgroup
    belongs_to :timezone, A2billingRestApi.Timezone,  foreign_key: :id_timezone
    belongs_to :group,    A2billingRestApi.CardGroup, foreign_key: :id_group
    belongs_to :seria,    A2billingRestApi.CardSeria, foreign_key: :id_seria

    has_one :sip_buddy_acc, A2billingRestApi.SipBuddy, foreign_key: :id_cc_card
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [ :enableexpire, :expiredays, :username, :useralias, :uipass, :id_didgroup, :id_timezone, :id_group,
                      :credit, :tariff, :activated, :status, :lastname, :firstname, :address, :city, :state, :country,
                      :zipcode, :phone, :email, :fax, :inuse, :simultaccess, :currency, :lastuse, :nbused, :typepaid,
                      :creditlimit, :voipcall, :sip_buddy, :iax_buddy, :language, :redial, :runservice, :nbservice,
                      :num_trials_done, :vat, :servicelastrun, :initialbalance, :invoiceday, :autorefill, :loginkey,
                      :mac_addr, :tag, :voicemail_permitted, :voicemail_activated, :last_notification, :id_seria,
                      :email_notification, :notify_email, :credit_notification, :company_name, :company_website,
                      :vat_rn, :traffic, :traffic_target, :discount, :restriction, :serial])

    |> validate_required([:username, :useralias, :uipass])
  end

  def changeset_with_sip_buddy(struct, params \\ %{}) do
    struct |> changeset(params) |> put_default_sip_buddy
  end

  def put_default_sip_buddy(card) do
    if card.changes |> Map.has_key?(:username) do
      sip_buddy = Ecto.Changeset.change(%A2billingRestApi.SipBuddy{}, %{
        name:        card.changes.username,
        accountcode: card.changes.username,
        username:    card.changes.username,
        regexten:    card.changes.username
      })
      card |> put_assoc(:sip_buddy_acc, sip_buddy)
    else
      card
    end
  end
end
