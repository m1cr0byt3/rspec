# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    title { Faker::Lorem.sentence }
    content { Faker::Lorem.paragraph }
    published { !rand(0..1).zero? }
    user
  end
  factory :published_post, class: 'Post' do
    title { Faker::Lorem.sentence }
    content { Faker::Lorem.paragraph }
    published { true }
    user
  end
end
