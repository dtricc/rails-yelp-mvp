class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show

  end

  def new
    #render and empty form, send an empty restaurant object
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
    #create a Restaurant object
    #make it presistant
  end

  def edit
    #render a form with the existing object
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
    #make changes presistant
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
    #destroy one Restaurant object
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:address, :name, :phone_number, :category)
  end
end
