defmodule A2billingRestApi.TokenView do
  use A2billingRestApi.Web, :view

  def render("show.json", %{jwt: jwt})  do
    %{jwt: jwt}
  end
end
