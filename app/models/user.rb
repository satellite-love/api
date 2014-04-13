class User < ActiveRecord::Base
  require 'digest/sha1'
  has_many :tasks
  belongs_to :satelite

  def make_access_token
    self.access_token = Digest::SHA1.hexdigest(self.id.to_s)
    self.save
  end
end
