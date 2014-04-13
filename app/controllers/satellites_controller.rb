class SatellitesController < ApplicationController
  require 'open-uri'
  require 'nokogiri'
  def index
    @satellites = Satellite.all
  end

  def show
    @satellite = Satellite.find_by(name: params[:SatelliteName])
    @users = @satellite.users.all
  end

end
