# frozen_string_literal: true

# app/controllers/users/sessions_controller.rb
class Users::SessionsController < Devise::SessionsController
  respond_to :json

  private

  # respond_width
  def respond_with(_resource, _opts = {})
    render json: {message: "Login Success"}.merge(UserSerializer.new(current_user)), status: :ok
  end

  # respond_to_on_destroy
  def respond_to_on_destroy
    render json: {
      message: "Logged out successfully"
    }, status: :ok
  end
end
