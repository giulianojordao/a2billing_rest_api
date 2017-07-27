defmodule A2billingRestApi.DidgroupView do
  use A2billingRestApi.Web, :view
  use JaSerializer.PhoenixView

  attributes [:didgroupname, :creationdate]


end
