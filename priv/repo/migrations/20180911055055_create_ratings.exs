defmodule Store.Repo.Migrations.CreateRatings do
  use Ecto.Migration

  def change do
    create table(:ratings) do
      add :score, :string, null: false
      add :description, :string

      timestamps()
    end

  end
end
