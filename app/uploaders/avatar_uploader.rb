# encoding: utf-8

class AvatarUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :thumbnail do
    eager
    resize_to_fit(50, 50)
  end

  version :bright_face do
    cloudinary_transformation :effect => 'brightness:30', :radius => 20,
        :width => 100, :height => 150, :crop => :thumb, :gravity => :face
  end
end
