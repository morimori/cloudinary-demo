class User < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  mount_uploader :avatar, AvatarUploader
end
