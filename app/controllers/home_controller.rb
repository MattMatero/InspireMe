class HomeController < ApplicationController


  def index
    @saved_locations = Location.where(userId: current_user.id) unless current_user.nil?
  end

end
