defmodule A2billingRestApi.DidgroupTest do
  use A2billingRestApi.ModelCase

  alias A2billingRestApi.Didgroup

  @valid_attrs %{didgroupname: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Didgroup.changeset(%Didgroup{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Didgroup.changeset(%Didgroup{}, @invalid_attrs)
    refute changeset.valid?
  end
end
