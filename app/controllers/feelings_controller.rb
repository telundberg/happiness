class FeelingsController < ApplicationController
  def index
    @feelings = Feeling.all
  end
end
