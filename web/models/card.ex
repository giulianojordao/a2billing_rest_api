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
    field :lastname, :string
    field :firstname, :string
    field :address, :string
    field :city, :string
    field :state, :string
    field :country, :string
    field :zipcode, :string
    field :phone, :string
    field :email, :string
    field :fax, :string
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
    field :redial, :string
    field :runservice, :integer
    field :nbservice, :integer
    field :num_trials_done, :integer
    field :vat, :float
    field :servicelastrun, :naive_datetime
    field :initialbalance, :decimal
    field :invoiceday, :integer
    field :autorefill, :integer
    field :loginkey, :string
    field :mac_addr, :string
    field :tag, :string
    field :voicemail_permitted, :integer
    field :voicemail_activated, :integer
    field :last_notification, :naive_datetime
    field :email_notification, :string
    field :notify_email, :integer
    field :credit_notification, :integer
    field :company_name, :string
    field :company_website, :string
    field :vat_rn, :string
    field :traffic, :integer
    field :traffic_target, :string
    field :discount, :decimal
    field :restriction, :integer
    field :serial, :integer

    belongs_to :didgroup, A2billingRestApi.Didgroup,  foreign_key: :id_didgroup
    belongs_to :timezone, A2billingRestApi.Timezone,  foreign_key: :id_timezone
    belongs_to :group,    A2billingRestApi.CardGroup, foreign_key: :id_group
    belongs_to :seria,    A2billingRestApi.CardSeria, foreign_key: :id_seria
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [ :enableexpire, :expiredays, :username, :useralias, :uipass,
                      :credit, :tariff, :activated, :status, :lastname, :firstname, :address, :city, :state, :country,
                      :zipcode, :phone, :email, :fax, :inuse, :simultaccess, :currency, :lastuse, :nbused, :typepaid,
                      :creditlimit, :voipcall, :sip_buddy, :iax_buddy, :language, :redial, :runservice, :nbservice,
                      :num_trials_done, :vat, :servicelastrun, :initialbalance, :invoiceday, :autorefill, :loginkey,
                      :mac_addr, :tag, :voicemail_permitted, :voicemail_activated, :last_notification,
                      :email_notification, :notify_email, :credit_notification, :company_name, :company_website,
                      :vat_rn, :traffic, :traffic_target, :discount, :restriction, :serial])

    |> validate_required([:username, :useralias, :uipass, :lastname, :firstname, :address, :city, :state, :country,
                         :zipcode, :phone, :email, :fax, :redial, :loginkey, :tag, :email_notification, :company_name,
                         :company_website, :traffic_target])
  end
end
