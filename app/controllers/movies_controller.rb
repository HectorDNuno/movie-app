class MoviesController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @movies = Movie.all
    render template: "movies/index"
  end

  def create
    @movie = Movie.create(
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
      director: params["director"],
      english: params["english"],
    )
    if @movie.save
      render template: "movies/show"
    else
      render json: { errors: @movie.errors.full_messages }, status: 422
    end
  end

  def show
    id = params["id"]
    @movie = Movie.find(id)
    render template: "movies/show"
  end

  def update
    movie_id = params["id"]
    @movie = Movie.find(movie_id)
    @movie.title = params["title"] || @movie.title
    @movie.year = params["year"] || @movie.year
    @movie.plot = params["plot"] || @movie.plot
    @movie.director = params["director"] || @movie.director
    @movie.english = params["english"] || @movie.english
    @movie.save
    if @movie.save
      render template: "movies/show"
    else
      render json: { errors: @movie.errors.full_messages }, status: 422
    end
  end

  def destroy
    movie_id = params["id"]
    @movie = Movie.find(movie_id)
    @movie.destroy
    render json: { message: "Movie deleted" }
  end
end
