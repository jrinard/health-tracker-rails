class FoodsController < ApplicationController

  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      flash[:notice] = "Food Successfuly Added!"
      respond_to do |format|
        format.html {redirect_to foods_path}
        format.js
      end
    else
      render :new
    end
  end




  private
    def food_params
      params.require(:food).permit(:name, :amount, :calories, :protein, :fat, :carbs, :notes, :date)
    end
end
