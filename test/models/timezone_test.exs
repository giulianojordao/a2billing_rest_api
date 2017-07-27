defmodule A2billingRestApi.TimezoneTest do
  use A2billingRestApi.ModelCase

  alias A2billingRestApi.Timezone

  @valid_attrs %{gmtoffset: 42, gmttime: "some content", gmtzone: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Timezone.changeset(%Timezone{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Timezone.changeset(%Timezone{}, @invalid_attrs)
    refute changeset.valid?
  end
end
