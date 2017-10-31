class Api::ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

end
