defmodule A2billingRestApi.CardSeriaView do
  use A2billingRestApi.Web, :view
  use JaSerializer.PhoenixView

  attributes [:name, :description, :value]


end
