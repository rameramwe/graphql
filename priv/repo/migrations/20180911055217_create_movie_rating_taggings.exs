defmodule Store.Repo.Migrations.CreateMovieRatingTaggings do
  use Ecto.Migration

  def change do
    create table(:rating_taggings, primary_key: false) do
      add :item_id, references(:items), null: false
      add :rating_id, references(:ratings), null: false
    end
  end
end
