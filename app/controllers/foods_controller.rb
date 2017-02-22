class FoodsController < ApplicationController

  def index
    @foods = Food.where(user_id: current_user.id)
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    respond_to do |format|
      if @food.save
        format.html {redirect_to foods_path, notice: 'Food Successfuly Added!'}
        format.js
      else
        format.html {render :new, notice: 'There was an error.'}
        format.js { redirect_back(fallback_location: foods_path, notice: 'There was an error.') }
      end
    end
  end




  private
    def food_params
      params.require(:food).permit(:name, :amount, :calories, :protein, :fat, :carbs, :notes, :date, :user_id)
    end
end
