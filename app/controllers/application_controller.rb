class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :closer_store

  def closer_store
    if cookies[:closer_store_by_zip]
      return Store.closer_store_by_zip(zip)
    else
      return Store.closer_store(request.remote_ip)
    end
  end
end
