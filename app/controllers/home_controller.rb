class HomeController < ApplicationController
  def index
    if current_user
      @days = Food.food_history(current_user)
    end
  end

end
