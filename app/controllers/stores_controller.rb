class StoresController < ApplicationController
  def enter_zip
    cookies.permanent[:closer_store_by_zip] = Store.closer_store_by_zip(params[:zip])
    redirect_to :back
  end
end
