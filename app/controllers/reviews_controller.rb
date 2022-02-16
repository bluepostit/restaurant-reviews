class ReviewsController < ApplicationController
  before_action :set_restaurant, except: :destroy

  def new
    @review = Review.new
  end

  def create
    # find restaurant
    # build a new Review
    # associate it with the restaurant!
    # save the Review
    # redirect to...?

    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def destroy
    # find review by its id
    # (get restaurant from the review)
    # destroy it
    # redirect to restaurant show page
    @review = Review.find(params[:id])
    restaurant = @review.restaurant
    @review.destroy
    redirect_to restaurant_path(restaurant)
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
