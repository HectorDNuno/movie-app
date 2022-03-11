class MoviesController < ApplicationController
  def all_movies
    movies = Movie.all
    render json: movies
  end

  def all_movies_reversed
    movies = Movie.order("id ASC").reverse_order
    render json: movies
  end

  def all_movies_alphabetical
    movies = Movie.order(:title)
    render json: movies
  end

  def individual_movie
    movie_id = params["id"]
    render json: { movie: Movie.find(movie_id) }
  end
end
