class ActorsController < ApplicationController
  def index
    actor = Actor.all
    render json: actor
  end

  def create
    actor = Actor.create(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"],
    )
    render json: actor.as_json
  end

  def show
    id = params["id"]
    render json: { message: Actor.find(id) }
  end

  def update
    actor_id = params["id"]
    actor = Actor.find(actor_id)
    actor.first_name = params["first_name"] || actor.first_name
    actor.last_name = params["last_name"] || actor.last_name
    actor.known_for = params["known_for"] || actor.known_for
    actor.save
    render json: actor.as_json
  end

  def destroy
    actor_id = params["id"]
    actor = Actor.find(actor_id)
    actor.destroy
    render json: { message: "Actor deleted" }
  end
end
