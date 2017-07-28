defmodule A2billingRestApi.Factory do
  use ExMachina.Ecto, repo: A2billingRestApi.Repo

  use A2billingRestApi.CardFactory
  use A2billingRestApi.CardGroupFactory
  use A2billingRestApi.CardSeriaFactory
  use A2billingRestApi.DidgroupFactory
  use A2billingRestApi.UserFactory
end
