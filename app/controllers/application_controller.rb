class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :format_date_time


  # def format_date_time(time)
  #   datetime = params[:datetime]
  #   params[:datetime] = DateTime.strptime(datetime, pref_date_time_format).strftime('%c')
  # end

end
