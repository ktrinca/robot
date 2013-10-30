class Image < ActiveRecord::Base
  attr_accessible :case_id, :path
  belongs_to :case
  validates :path, :presence => true
  mount_uploader :path, PictureUploader

  def name
   name = self.path.to_s.split('/')
   name.last
  end	
	 						

end
