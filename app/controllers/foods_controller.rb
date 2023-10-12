class FoodsController < ApplicationController
  def index
    @user = current_user
    @foods = @user.foods
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    @user = current_user
  end
end
