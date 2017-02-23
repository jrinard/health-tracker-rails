class FoodsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_food, only: [:show, :edit, :update, :destroy]

  def index
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

  def edit
  end

  def update

    if @food.update(food_params)
      respond_to do |format|
        if @food.save
          format.html {redirect_to foods_path, notice: 'Food Successfuly Edited!'}
          format.js
        else
          format.html {render :edit, notice: 'There was an error.'}
          format.js { redirect_back(fallback_location: foods_path, notice: 'There was an error.') }
        end
      end
    end
  end

  def destroy

  end




private
  def set_food
    @food = Food.where(user_id: current_user.id)
  end

  def food_params
    params.require(:food).permit(:name, :amount, :calories, :protein, :fat, :carbs, :notes, :date, :user_id)
  end
end
