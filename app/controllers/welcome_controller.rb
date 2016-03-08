class WelcomeController < ApplicationController
  def index
    render text: "Surprise!"
  end
end