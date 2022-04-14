Rails.application.routes.draw do
  get "/movies" => "movies#index"
  get "/movie/:id" => "movies#show"
  post "/movie" => "movies#create"
  patch "/movie/:id" => "movies#update"
  delete "/movie/:id" => "movies#destroy"

  get "/actors" => "actors#index"
  get "/actor/:id" => "actors#show"
  post "/actor" => "actors#create"
  patch "/actor/:id" => "actors#update"
  delete "/actor/:id" => "actors#destroy"

  post "/user" => "users#create"
  post "/sessions" => "sessions#create"
  get "/users" => "users#show"

  post "moviegenre" => "movie_genres#create"
end
