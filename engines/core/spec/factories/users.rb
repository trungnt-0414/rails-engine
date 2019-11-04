# frozen_string_literal: true

module Samurai
  FactoryBot.define do
    factory :user, class: "Samurai/User" do
      email{FFaker::Internet.email}
      password{"password"}
      password_confirmation{"password"}
      admin{false}
    end

    factory :admin, parent: :user do |f|
      admin{true}
    end
  end
end
