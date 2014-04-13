class User < ActiveRecord::Base
  require 'digest/sha1'
  has_many :tasks
  belongs_to :satellite

  def make_access_token
    self.update( access_token: Digest::SHA1.hexdigest(self.id.to_s))
    self.save
  end
end
