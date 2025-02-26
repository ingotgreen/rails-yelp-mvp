class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(review_params)
    if @review.save
      redirect_to @restaurant, notice: "Review added!"
    else
      render "restaurants/show"
    end
  end

def index
    @restaurants = Restaurant.all
end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
