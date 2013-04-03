class Project < ActiveRecord::Base
  attr_accessible :launchdate, :name, :territory
  validates :name,  :presence => true
  validates :territory, :presence => true
  belongs_to :campaign
end
