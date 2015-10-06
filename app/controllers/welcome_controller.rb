class WelcomeController < ApplicationController
  before_action :authenticate_user!, except: [:index, :tour, :about]
  def index
  end

  def about
  end
end
