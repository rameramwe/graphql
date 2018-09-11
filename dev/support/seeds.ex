# those are dummy data to help us with development
defmodule Store.Seeds do

  def run() do
    alias Store.{Movie, Repo}

    # Ratings

    classic =
      %Movie.Rating{score: "Classic"}
      |> Repo.insert!

    _mediocre =
      %Movie.Rating{score: "Mediocre"}
      |> Repo.insert!

    flop =
      %Movie.Rating{score: "Flop"}
      |> Repo.insert!


    # Action

    action = %Movie.Category{name: "Action"} |> Repo.insert!

    _predator =
      %Movie.Item{name: "Predator", price: 12.30, category: action}
      |> Repo.insert!

    _cobra =
      %Movie.Item{name: "Cobra", price: 13.30, category: action, ratings: [flop]}
      |> Repo.insert!

    _aliens =
      %Movie.Item{name: "Aliens", price: 14.30, category: action}
      |> Repo.insert!

    _die_hard =
      %Movie.Item{name: "Die Hard", price: 15.30, category: action}
      |> Repo.insert!

    _the_dark_knight =
      %Movie.Item{name: "The Dark Knight", price: 16.30, category: action, ratings: [classic]}
      |> Repo.insert!


    # Thriller

    thriller = %Movie.Category{name: "Thriller"} |> Repo.insert!

    _seven =
      %Movie.Item{name: "Seven", price: 13.30, category: thriller}
      |> Repo.insert!

    _the_silence_of_the_lambs =
      %Movie.Item{name: "The silence of the lambs", price: 13.30, category: thriller}
      |> Repo.insert!

    _shutter_island =
      %Movie.Item{name: "Shutter Island", price: 13.30, category: thriller, ratings: [classic]}
      |> Repo.insert!


    # Chick flick

    chick_flick = %Movie.Category{name: "Chick flick"} |> Repo.insert!

    _the_notebook =
      %Movie.Item{name: "The Notebook", price: 1.2, category: chick_flick}
      |> Repo.insert!

    _legally_blonde =
      %Movie.Item{name: "Legally Blonde", price: 1.30, category: chick_flick}
      |> Repo.insert!

    _twilight =
      %Movie.Item{name: "Twilight", price: 1.30, category: chick_flick}
      |> Repo.insert!

    _mamma_mia =
      %Movie.Item{name: "Mamma Mia!", price: 1.30, category: chick_flick}
      |> Repo.insert!

    _pitch_perfect =
      %Movie.Item{name: "Pitch Perfect", price: 1.30, category: chick_flick}
      |> Repo.insert!

    _cinderella_story =
      %Movie.Item{name: "A Cinderella Story", price: 1.30, category: chick_flick}
      |> Repo.insert!
    :ok
  end
end
