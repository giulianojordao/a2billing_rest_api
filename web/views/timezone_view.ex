defmodule A2billingRestApi.TimezoneView do
  use A2billingRestApi.Web, :view
  use JaSerializer.PhoenixView

  attributes [:gmtzone, :gmttime, :gmtoffset, :inserted_at, :updated_at]
  

end
