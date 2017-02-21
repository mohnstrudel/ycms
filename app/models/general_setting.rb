class GeneralSetting < ApplicationRecord
	mount_uploader :logo, LogoUploader
	
	store_accessor :language, :en
	store_accessor :language, :ru
end
