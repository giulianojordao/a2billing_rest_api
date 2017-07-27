defmodule A2billingRestApi.Repo.Migrations.CreateDidgroup do
  use Ecto.Migration

  def change do
    create table(:cc_didgroup) do
      add :didgroupname, :string
      add :creationdate, :timestamp
    end

  end
end
