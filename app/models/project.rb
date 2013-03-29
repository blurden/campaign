class Project < ActiveRecord::Base
  attr_accessible :launchdate, :name
  validates :name,  :presence => true
  belongs_to :campaign
end
