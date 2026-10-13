class SitesController < ApplicationController
  def index
    @food_scans = FoodScan.all
  end

  def about
    flash.now[:notice] = "Welcome to the About page!"
    flash.now[:alert] = "This is an alert message."
  end
end
