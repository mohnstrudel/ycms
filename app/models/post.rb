class Post < ApplicationRecord
  
  include Bootsy::Container
  belongs_to :post_category

  validates :title, presence: true

  extend FriendlyId
  friendly_id :title, use: [:finders, :slugged]

  translates :title, :body
  globalize_accessors :locales => [:en, :ru], :attributes => [:title, :body]
end
