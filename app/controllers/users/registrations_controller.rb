# app/controllers/users/registrations_controller.rb
class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    register_success && return if resource.persisted?

    register_failed
  end

  def register_success
    render json: {message: "Signed up successfully."}.merge(UserSerializer.new(current_user)), status: :ok
  end

  def register_failed
    render json: {message: "Something went wrong."}, status: :unprocessable_entity
  end

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation).merge(uuid: SecureRandom.uuid)
  end
end
