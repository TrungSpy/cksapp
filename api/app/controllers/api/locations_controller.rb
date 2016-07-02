module Api
  class LocationsController < ApplicationController

    def index
      @locations = Location.all
      render json: @locations
    end

    def show
      @location = location.find(params[:id])
      render json: @location
    end
  end
end