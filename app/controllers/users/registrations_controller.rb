# frozen_string_literal: true

# app/controllers/users/registrations_controller.rb
class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  # respond_width
  def respond_with(resource, _opts = {})
    register_success && return if resource.persisted?

    register_failed
  end

  # register_success
  def register_success
    render json: {message: "Signed up successfully."}.merge(UserSerializer.new(current_user)), status: :ok
  end

  # register_failed
  def register_failed
    render json: {message: "Something went wrong."}, status: :unprocessable_entity
  end

  # sign_up_params
  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation).merge(uuid: SecureRandom.uuid)
  end
end
