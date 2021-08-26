class CurrentUserController < ApplicationController
  before_action :authenticate_user!
  def index
    # byebug
    render json: UserSerializer.new(current_user), status: :ok
  end
end