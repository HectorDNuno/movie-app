Rails.application.routes.draw do
  get "/benedict" => "actors#benedict_method"

  get "/all_movies" => "movies#all_movies"
  get "/individual_movie/:id" => "movies#individual_movie"
end
