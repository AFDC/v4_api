class HomeController < ApplicationController
  def hello
    render json: {message: "Greetings, guest!"}
  end
end
