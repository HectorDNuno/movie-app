Rails.application.routes.draw do
  get "/movies" => "movies#index"
  get "/movie/:id" => "movies#show"
  post "/movie" => "movies#create"
  patch "/movie/:id" => "movies#update"
  delete "/movie/:id" => "movies#destroy"
end
