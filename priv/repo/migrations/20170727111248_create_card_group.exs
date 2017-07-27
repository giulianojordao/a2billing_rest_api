defmodule A2billingRestApi.Repo.Migrations.CreateCardGroup do
  use Ecto.Migration

  def change do
    create table(:cc_card_group) do
      add :name, :string
      add :description, :text
      add :users_perms, :integer
      add :provisioning, :text
    end

  end
end
