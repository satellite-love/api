class SatellitesController < ApplicationController
  require 'open-uri'
  def index
    @satellites = Satellite.all
    @parsed_html = open("http://science.nasa.gov/iSat/iSAT-text-only/")
    p @parsed_html
  end

  def show
    @satellite = Satellite.find_by(name: params[:satellitename])
    @users = @satellite.users.all
  end
end
