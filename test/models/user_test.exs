defmodule A2billingRestApi.UserTest do
  use A2billingRestApi.ModelCase

  alias A2billingRestApi.User

  @valid_attrs %{active: 42, admin: 42, email: "some content", password: "some content", username: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
