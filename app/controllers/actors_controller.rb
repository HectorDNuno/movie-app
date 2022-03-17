class ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render template: "actors/index"
  end

  def create
    @actor = Actor.create(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"],
      age: params["age"],
      gender: params["gender"],
    )
    render template: "actors/show"
  end

  def show
    id = params["id"]
    @actor = Actor.find(id)
    render template: "actors/show"
  end

  def update
    actor_id = params["id"]
    @actor = Actor.find(actor_id)
    @actor.first_name = params["first_name"] || @actor.first_name
    @actor.last_name = params["last_name"] || @actor.last_name
    @actor.known_for = params["known_for"] || @actor.known_for
    @actor.age = params["age"] || @actor.age
    @actor.gender = params["gender"] || @actor.gender
    @actor.save
    render template: "actors/show"
  end

  def destroy
    actor_id = params["id"]
    @actor = Actor.find(actor_id)
    @actor.destroy
    render json: { message: "Actor deleted" }
  end
end
