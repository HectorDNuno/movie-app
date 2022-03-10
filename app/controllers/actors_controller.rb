class ActorsController < ApplicationController
  def benedict_method
    actor = Actor.find(6)
    render json: actor.as_json
  end
end
