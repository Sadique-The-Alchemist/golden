defmodule Golden.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :hash_password, :string

      timestamps()
    end
  end
end
