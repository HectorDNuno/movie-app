class UsersController < ApplicationController
  def create
    user = User.new(
      name: params["name"],
      email: params["email"],
      password: params["password"],
      password_confirmation: params["password_confirmation"],
    )
    user.save
    render json: user
  end

  def show
    user = current_user
    render json: user
  end
end
