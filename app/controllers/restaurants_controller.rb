class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def upvote
    restaurant = Restaurant.find(params[:id])
    restaurant.increment!(:fresh_votes)

    redirect_to restaurant
  end

  def downvote
    restaurant = Restaurant.find(params[:id])
    restaurant.increment!(:rotten_votes)

    redirect_to restaurant
  end

  private

  def restaurant_params
    params.required(:restaurant)
      .permit(
        :name,
        :street_address,
        :city,
        :state
      )
  end
end
