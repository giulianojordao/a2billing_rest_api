defmodule A2billingRestApi.ApiUser do
  use A2billingRestApi.Web, :model

  schema "api_users" do
    field :email, :string
    field :encrypted_password, :string

    field :password, :string, virtual: true

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(model, params \\ :empty) do
   model
   |> cast(params, ~w(email), [])
   |> cast(params, ~w(password), [])
   |> validate_length(:email, min: 1, max: 255)
   |> validate_format(:email, ~r/@/)
   |> validate_length(:password, min: 6)
   |> put_password_hash
 end

 defp put_password_hash(changeset) do
   case changeset do
     %Ecto.Changeset{valid?: true, changes: %{password: pass}} ->
       put_change(changeset, :encrypted_password, Comeonin.Bcrypt.hashpwsalt(pass))
     _ ->
       changeset
   end
 end
end
