defmodule A2billingRestApi.User do
  use A2billingRestApi.Web, :model

  schema "user" do
    field :username, :string
    field :password, :string
    field :email, :string
    field :active, :integer, default: 1
    field :admin, :integer, default: 0
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:username, :password, :email, :active, :admin])
    |> validate_required([:username, :password, :email])
  end
end
