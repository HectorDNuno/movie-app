class ActorsController < ApplicationController
  # def benedict_method
  #   actor = Actor.find(6)
  #   render json: actor.as_json
  # end

  def index
    actor = Actor.all
    render json: actor
  end

  def create
    movie = Movie.create(
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
    )
    render json: movie.as_json
  end

  def show
    id = params["id"]
    render json: { message: Movie.find(id) }
  end

  def update
    movie_id = params["id"]
    movie = Movie.find(movie_id)
    movie.title = params["title"] || movie.title
    movie.year = params["year"] || movie.year
    movie.plot = params["plot"] || movie.plot
    movie.save
    render json: movie.as_json
  end

  def destroy
    movie_id = params["id"]
    movie = Movie.find(movie_id)
    movie.destroy
    render json: { message: "Movie deleted" }
  end
end
