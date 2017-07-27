defmodule A2billingRestApi.Timezone do
  use A2billingRestApi.Web, :model

  schema "cc_timezone" do
    field :gmtzone, :string
    field :gmttime, :string
    field :gmtoffset, :integer
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:gmtzone, :gmttime, :gmtoffset])
    |> validate_required([:gmtzone, :gmttime, :gmtoffset])
  end
end
