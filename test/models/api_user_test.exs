defmodule A2billingRestApi.ApiUserTest do
  use A2billingRestApi.ModelCase

  alias A2billingRestApi.ApiUser

  @valid_attrs %{email: "user@example.com", password: "somecontent"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = ApiUser.changeset(%ApiUser{}, @valid_attrs)
    assert changeset.valid?

  end

  test "changeset with invalid attributes" do
    changeset = ApiUser.changeset(%ApiUser{}, @invalid_attrs)
    refute changeset.valid?
  end
end
