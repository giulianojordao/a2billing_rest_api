defmodule A2billingRestApi.Didgroup do
  use A2billingRestApi.Web, :model

  schema "cc_didgroup" do
    field :didgroupname, :string
    field :creationdate, :naive_datetime
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:didgroupname])
    |> validate_required([:didgroupname])
  end
end
