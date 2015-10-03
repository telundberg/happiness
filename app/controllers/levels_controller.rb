class LevelsController < ApplicationController
  # before_filter :format_date_time, :only => [:create]

  # def index
  #   @feeling = Feeling.find(params[:feeling_id])
  #   @levels = Level.find(params[:feeling_id])
  #   # @level = Level.find(params[:feeling_id])
  # end
  # def show
  #   @level = Level.find(params[:feeling_id])
  # end
  def new
    @feeling = Feeling.find(params[:feeling_id])
    @level = Level.new
  end
  def create
    @feeling = Feeling.find(params[:feeling_id])
    @level = @feeling.levels.new(level_params)

    if @level.save
      redirect_to feeling_path(@feeling)
      flash[:notice] = "Level of happiness added!"
    else
      render :new
    end
  end

  protected

  def level_params
    params.require(:level).permit(:amount)
  end
end
