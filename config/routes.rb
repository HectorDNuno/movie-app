Rails.application.routes.draw do
  get "/benedict" => "actors#benedict_method"

  get "/all_movies" => "movies#all_movies"
  get "/all_movies_reversed" => "movies#all_movies_reversed"
  get "/all_movies_alphabetical" => "movies#all_movies_alphabetical"
  get "/individual_movie/:" => "movies#individual_movie"
end
