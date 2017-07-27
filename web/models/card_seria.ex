defmodule A2billingRestApi.CardSeria do
  use A2billingRestApi.Web, :model

  schema "cc_card_seria" do
    field :name, :string
    field :description, :string
    field :value, :integer
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :description, :value])
    |> validate_required([:name, :value])
  end
end
