class Thumbnail < ActiveRecord::Base
  attr_accessible :path
  validates :path, :presence => true
  
  validates :path, :format => {
    :with=> %r{\.(gif|jpg|png|flv)$}i,
    :message => 'Pueden ser imagenes GIF, JPG, flv o PNG.'
  }

  mount_uploader :path, PictureUploader
end
