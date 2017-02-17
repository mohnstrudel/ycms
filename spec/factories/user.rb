# spec/factories/user.rb
require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.first_name { Faker::Name.first_name }
    f.second_name { Faker::Name.last_name }
    f.email { Faker::Internet.email }
    f.password { Faker::Internet.password(8) }
  end
end