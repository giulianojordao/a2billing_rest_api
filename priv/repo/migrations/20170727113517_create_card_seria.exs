defmodule A2billingRestApi.Repo.Migrations.CreateCardSeria do
  use Ecto.Migration

  def change do
    create table(:cc_card_seria) do
      add :name, :string
      add :description, :text
      add :value, :integer
    end

  end
end
