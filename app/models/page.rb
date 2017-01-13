class Page < ApplicationRecord
	belongs_to :page_category

	extend FriendlyId
  	friendly_id :title, use: [:finders, :slugged]
end
