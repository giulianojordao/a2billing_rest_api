defmodule A2billingRestApi.CardView do
  use A2billingRestApi.Web, :view
  use JaSerializer.PhoenixView

  attributes [:firstusedate, :expirationdate, :enableexpire, :expiredays, :username, :useralias, :uipass, :credit,
              :tariff, :activated, :status, :lastname, :firstname, :address, :city, :state, :country, :zipcode, :phone,
              :email, :fax, :inuse, :simultaccess, :currency, :lastuse, :nbused, :typepaid, :creditlimit, :voipcall,
              :sip_buddy, :iax_buddy, :language, :redial, :runservice, :nbservice, :num_trials_done, :vat,
              :servicelastrun, :initialbalance, :invoiceday, :autorefill, :loginkey, :mac_addr, :tag,
              :voicemail_permitted, :voicemail_activated, :last_notification, :email_notification, :notify_email,
              :credit_notification, :company_name, :company_website, :vat_rn, :traffic, :traffic_target,
              :discountdecimal, :restriction, :serial, :block, :lock_pin, :lock_date, :max_concurrent]
end
