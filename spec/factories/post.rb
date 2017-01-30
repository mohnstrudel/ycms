# spec/factories/post.rb
require 'faker'

FactoryGirl.define do
  factory :post do |f|
    f.title { Faker::Lorem.sentence }
    f.body { Faker::Lorem.sentence(200) }
  end
end