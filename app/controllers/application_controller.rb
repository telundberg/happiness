class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :format_date_time
  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  # def format_date_time(time)
  #   datetime = params[:datetime]
  #   params[:datetime] = DateTime.strptime(datetime, pref_date_time_format).strftime('%c')
  # end

end
