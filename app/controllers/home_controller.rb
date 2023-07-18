# frozen_string_literal: true

# Home Controller
class HomeController < ApplicationController
  # index
  def index
    render json: {message: "hello"}, status: :ok
  end
end
