# frozen_string_literal: true

Rails.application.routes.draw do
  require "sidekiq/web"
  require "sidekiq-scheduler/web"
  devise_for :users,
             controllers: {
               sessions: "users/sessions",
               registrations: "users/registrations"
             }

  root "home#index"

  if Rails.env.development? || Rails.evn.staging?
    scope :monitoring do
      Sidekiq::Web.use Rack::Auth::Basic do |username, password|
        ActiveSupport::SecurityUtils.secure_compare(Digest::SHA256.hexdigest(username),
                                                    Digest::SHA256.hexdigest(ENV.fetch("ADMIN_USERNAME", nil))) &
          ActiveSupport::SecurityUtils.secure_compare(Digest::SHA256.hexdigest(password),
                                                      Digest::SHA256.hexdigest(ENV.fetch("ADMIN_PASSWORD", nil)))
      end

      mount Sidekiq::Web, at: "/sidekiq"
    end
  end
end
