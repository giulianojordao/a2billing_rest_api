defmodule A2billingRestApi.Repo.Migrations.CreateCard do
  use Ecto.Migration

  def change do
    create table(:cc_card) do
      add :creationdate, :naive_datetime
      add :firstusedate, :naive_datetime
      add :expirationdate, :naive_datetime
      add :enableexpire, :integer
      add :expiredays, :integer
      add :username, :string
      add :useralias, :string
      add :uipass, :string
      add :credit, :decimal
      add :tariff, :integer
      add :activated, :string
      add :status, :integer
      add :lastname, :string
      add :firstname, :string
      add :address, :string
      add :city, :string
      add :state, :string
      add :country, :string
      add :zipcode, :string
      add :phone, :string
      add :email, :string
      add :fax, :string
      add :inuse, :integer
      add :simultaccess, :integer
      add :currency, :string
      add :lastuse, :naive_datetime
      add :nbused, :integer
      add :typepaid, :integer
      add :creditlimit, :integer
      add :voipcall, :integer
      add :sip_buddy, :integer
      add :iax_buddy, :integer
      add :language, :string
      add :redial, :string
      add :runservice, :integer
      add :nbservice, :integer
      add :num_trials_done, :integer
      add :vat, :float
      add :servicelastrun, :naive_datetime
      add :initialbalance, :decimal
      add :invoiceday, :integer
      add :autorefill, :integer
      add :loginkey, :string
      add :mac_addr, :string
      add :tag, :string
      add :voicemail_permitted, :integer
      add :voicemail_activated, :integer
      add :last_notification, :naive_datetime
      add :email_notification, :string
      add :notify_email, :integer
      add :credit_notification, :integer
      add :company_name, :string
      add :company_website, :string
      add :vat_rn, :string
      add :traffic, :integer
      add :traffic_target, :string
      add :discountdecimal, :string
      add :restriction, :integer
      add :serial, :integer
      add :block, :integer
      add :lock_pin, :string
      add :lock_date, :naive_datetime
      add :max_concurrent, :integer

      add :id_didgroup, references(:cc_didgroup, on_delete: :nothing)
      add :id_timezone, references(:cc_timezone, on_delete: :nothing)
      add :id_group,    references(:cc_card_group, on_delete: :nothing)
      add :id_seria,    references(:cc_card_seria, on_delete: :nothing)
    end
    create index(:cc_card, [:id_didgroup])
    create index(:cc_card, [:id_timezone])
    create index(:cc_card, [:id_group])
    create index(:cc_card, [:id_seria])

  end
end
