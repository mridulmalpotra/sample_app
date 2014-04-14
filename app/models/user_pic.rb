class UserPic < ActiveRecord::Base
	userpic.oauth_token = user.uid
	validates :pic_name, presence: true
	validates :path, presence: true
end
