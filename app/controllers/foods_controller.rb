class FoodsController < ApplicationController
  def index
    @user = current_user
    @foods = @user.foods
  end
end
