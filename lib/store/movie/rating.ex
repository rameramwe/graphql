
defmodule Store.Movie.Rating do
  use Ecto.Schema
  import Ecto.Changeset
  alias Store.Movie.Rating


  schema "ratings" do
    field :description
    field :score, :string, null: false

    many_to_many :items, Store.Movie.Item, join_through: "rating_taggings"

    timestamps()
  end

  @doc false
  def changeset(%Rating{} = rating, attrs) do
    rating
    |> cast(attrs, [:name, :description])
    |> validate_required([:name])
  end
end
