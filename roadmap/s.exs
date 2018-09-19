defmodule StoreWeb.Schema do
  use Absinthe.Schema

  query do
    #field :movies, list_of(:movie)
  end

  object :movie do
    #field :id, :id
  end
end
