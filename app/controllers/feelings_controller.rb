class FeelingsController < ApplicationController
  def index
    @feelings = Feeling.all
  end

  def show
    @feeling = Feeling.find(params[:id])
    @levels = @feeling.levels
    # @species = Species.find(params[:id])
    # @reviews = @species.reviews.order(net_upvote: :desc).page params[:page]

  end

  # def new
  #   @feeling = Feeling.new
  # end
  #
  # def create
  #   @feeling = Feeling.new(feeling_params)
  #
  #   if @level.save
  #     redirect_to levels_path
  #     flash[:notice] = "Level of unhappiness added!"
  #   else
  #     render :new
  #   end
  # end
  #
  # protected
  #
  # def feeling_params
  #   params.require(:feeling).permit(:level, :description, :category)
  # end
end
