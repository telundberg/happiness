class LevelsController < ApplicationController
  def index
    @levels = Level.all
  end
  def new
    @level = Level.new
  end
  def create
    @level = Level.new(level_params)

    if @level.save
      redirect_to levels_path
      flash[:notice] = "Level of unhappiness added!"
    else
      render :new
    end
  end

  protected

  def level_params
    params.require(:level).permit(:amount)
  end

end
