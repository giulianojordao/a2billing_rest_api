defmodule A2billingRestApi.Repo.Migrations.CreateTimezone do
  use Ecto.Migration

  def change do
    create table(:cc_timezone) do
      add :gmtzone, :string
      add :gmttime, :string
      add :gmtoffset, :integer
    end

  end
end
