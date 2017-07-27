defmodule A2billingRestApi.CardSeriaTest do
  use A2billingRestApi.ModelCase

  alias A2billingRestApi.CardSeria

  @valid_attrs %{description: "some content", name: "some content", value: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = CardSeria.changeset(%CardSeria{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = CardSeria.changeset(%CardSeria{}, @invalid_attrs)
    refute changeset.valid?
  end
end
