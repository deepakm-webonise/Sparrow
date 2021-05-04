# frozen_string_literal: true

FactoryGirl.define do
  factory :hit do
    latitude { 1.5 }
    longitude { 1.5 }
    country { 'MyString' }
    ant { nil }
  end
end
