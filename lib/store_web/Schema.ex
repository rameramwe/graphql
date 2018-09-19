defmodule StoreWeb.Schema do
  use Absinthe.Schema

  query do
    # pretend this doesn't exist for now
  end

  object :movie do
    field :id, :id
    field :name, :string
    field :description, :string
  end
end
