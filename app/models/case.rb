class Case < ActiveRecord::Base
  attr_accessible :credit, :description, :link, :nature, :subtitle, :title, :date, :client_id
  validates :title, :nature, :description, :presence => true
  has_many :images
  belongs_to :client
  
end
