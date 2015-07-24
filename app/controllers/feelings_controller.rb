class FeelingsController < ApplicationController
  def index
    @feelings = Feeling.all
    @all_levels = Level.all
  end

  def show
    @feeling = Feeling.find(params[:id])
    @feelings = Feeling.all
    @all_levels = Level.all
    @levels = @feeling.levels
    # @species = Species.find(params[:id])
    # @reviews = @species.reviews.order(net_upvote: :desc).page params[:page]
  end
end
