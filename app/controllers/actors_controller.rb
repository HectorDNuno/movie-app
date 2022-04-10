class ActorsController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def index
    @actors = Actor.all
    render template: "actors/index"
  end

  def show
    id = params["id"]
    @actor = Actor.find(id)
    render template: "actors/show"
  end

  def create
    @actor = Actor.create(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"],
      movie_id: params["movie_id"],
      age: params["age"],
      gender: params["gender"],
    )
    if @actor.save
      render template: "actors/show"
    else
      render json: { errors: @actor.errors.full_messages }, status: 422
    end
  end

  def update
    actor_id = params["id"]
    @actor = Actor.find(actor_id)
    @actor.first_name = params["first_name"] || @actor.first_name
    @actor.last_name = params["last_name"] || @actor.last_name
    @actor.known_for = params["known_for"] || @actor.known_for
    @actor.movie_id = params["movie_id"] || @actor.movie_id
    @actor.age = params["age"] || @actor.age
    @actor.gender = params["gender"] || @actor.gender
    @actor.save
    if @actor.save
      render template: "actors/show"
    else
      render json: { errors: @actor.errors.full_messages }, status: 422
    end
  end

  def destroy
    actor_id = params["id"]
    @actor = Actor.find(actor_id)
    @actor.destroy
    render json: { message: "Actor deleted" }
  end
end
