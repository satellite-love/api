class Satellite < ActiveRecord::Base
  require 'open-uri'
  has_many :users

  def get_satellites
    self.limit(5)
  end
end
