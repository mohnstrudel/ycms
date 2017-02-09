class Page < ApplicationRecord
	include Bootsy::Container
	
	belongs_to :page_category

	validates :title, presence: true

	extend FriendlyId
  	friendly_id :title, use: [:finders, :slugged]
end
