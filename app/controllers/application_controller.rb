class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    if logged_in?
    else
      redirect_to "/login"
    end

  end

  def current_user
    if logged_in?
      session[:name]
    end
  end

  def logged_in?
    session.include? :name
  end


end
