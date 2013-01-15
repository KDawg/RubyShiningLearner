class Friend < ActiveRecord::Base
  # attr_accessible :title, :body
  validates_uniqueness_of :fbid, :message => "Facebook ID already exists on our list"
end
