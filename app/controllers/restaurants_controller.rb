class RestaurantsController < ApplicationController

  before_action :authenticate_user!, except: :index

  def index
  end

  def new 
  end

  def destroy 
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy 

    redirect_to '/'
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    if @restaurant.update(params[:restaurant].permit(:name, :description, :latitude, :longitude, :address))
      redirect_to @restaurant 
    else 
      render 'edit'
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save 
    redirect_to @restaurant
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private 
    def restaurant_params
      params.require(:restaurant).permit(:name, :description, :latitude, :longitude, :address)
    end
end
