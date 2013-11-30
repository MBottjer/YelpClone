class HomepageController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
end
