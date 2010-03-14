class Album < ActiveRecord::Base
  belongs_to :artist
  
  has_attached_file :photo
end
