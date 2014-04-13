class SatellitesController < ApplicationController
  require 'open-uri'
  require 'nokogiri'
  def index
    @satellites = Satellite.all
    #html = Nokogiri::HTML(open("http://www.satellite-calculations.com/Satellite/satellitelist.php"))
    #html.css('#main').css("tr")[20..-2].each_with_index do |tr, i|
    #p tr.css("td")[1].text
    # p tr.css("td")[0].text
    # p tr.css("td")[7].text
    #  p ""
    #end
  end

  def show
    @satellite = Satellite.find_by(name: params[:SatelliteName])
    @users = @satellite.users.all
  end

end
