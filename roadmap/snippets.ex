## 1

defmodule StoreWeb.Schema do
  use Absinthe.Schema

  query do
    # pretend this doesn't exist for now
  end

  object :movie do
    # we'll add fields in a bit
  end
end

Absinthe.Schema.lookup_type(StoreWeb.Schema, "Movie")

## 2
​ 	object ​:movie ​do​
​ 	  field ​:id​, ​:id​
​ 	  field ​:name​, ​:string​
​ 	  field ​:description​, ​:string​
​ 	​end​

### 3

query ​do​
​ 	field ​:movies, list_of(​:movie)
​end​
