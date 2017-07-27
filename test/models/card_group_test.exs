defmodule A2billingRestApi.CardGroupTest do
  use A2billingRestApi.ModelCase

  alias A2billingRestApi.CardGroup

  @valid_attrs %{description: "some content", name: "some content", provisioning: "some content", users_perms: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = CardGroup.changeset(%CardGroup{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = CardGroup.changeset(%CardGroup{}, @invalid_attrs)
    refute changeset.valid?
  end
end
