defmodule A2billingRestApi.GuardianSerializer do
  @behaviour Guardian.Serializer

  alias A2billingRestApi.Repo
  alias A2billingRestApi.ApiUser

  def for_token(user = %ApiUser{}), do: { :ok, "ApiUser:#{user.id}" }
  def for_token(_), do: { :error, "Unknown resource type" }

  def from_token("ApiUser:" <> id), do: { :ok, Repo.get(ApiUser, id) }
  def from_token(_), do: { :error, "Unknown resource type" }
end
