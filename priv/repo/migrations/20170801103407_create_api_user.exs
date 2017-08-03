defmodule A2billingRestApi.Repo.Migrations.CreateApiUser do
  use Ecto.Migration

  def change do
    create table(:api_users) do
      add :email, :string
      add :encrypted_password, :string

      timestamps()
    end

    create unique_index(:api_users, [:email])
  end
end
