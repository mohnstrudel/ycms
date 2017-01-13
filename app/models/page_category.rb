class PageCategory < ApplicationRecord
	has_many :pages

	extend FriendlyId
	friendly_id :title, use: [:finders, :slugged]
end
