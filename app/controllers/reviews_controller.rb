class ReviewsController < ApplicationController

  before_action :authenticate_user!, except: :index
  
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.create(params[:review].permit(:comment, :rating))
    redirect_to restaurant_path(@restaurant)
  end

end
