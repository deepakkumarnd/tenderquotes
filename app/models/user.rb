class User < ActiveRecord::Base
  devise :database_authenticatable, :recoverable
  mount_uploader :avatar, AvatarUploader
end
