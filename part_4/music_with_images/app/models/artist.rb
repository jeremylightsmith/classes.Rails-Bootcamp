class Artist < ActiveRecord::Base
  has_many :albums
  
  has_attached_file :photo
end
