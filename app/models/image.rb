class Image < ActiveRecord::Base
  attr_accessible :case_id, :path
  belongs_to :case
  validates :path, :presence => true
  
  validates :path, :format => {
    :with=> %r{\.(gif|jpg|png|flv)$}i,
    :message => 'Pueden ser imagenes GIF, JPG, flv o PNG.'
  }

  mount_uploader :path, PictureUploader

  def name
   name = self.path.to_s.split('/')
   name.last
  end	
	 						

end
