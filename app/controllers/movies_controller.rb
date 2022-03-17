class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies
  end

  def create
    movie = Movie.create(
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
      director: params["director"],
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
    movie.director = params["director"] || movie.director
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
