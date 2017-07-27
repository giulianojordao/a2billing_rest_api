defmodule A2billingRestApi.CardGroup do
  use A2billingRestApi.Web, :model

  schema "cc_card_group" do
    field :name, :string
    field :description, :string
    field :users_perms, :integer
    field :provisioning, :string
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :description, :users_perms, :provisioning])
    |> validate_required([:name])
  end
end
