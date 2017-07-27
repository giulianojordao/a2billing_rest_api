defmodule A2billingRestApi.CardGroupView do
  use A2billingRestApi.Web, :view
  use JaSerializer.PhoenixView

  attributes [:name, :description, :users_perms, :provisioning]


end
