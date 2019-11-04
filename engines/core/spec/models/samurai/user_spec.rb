require "rails_helper"
require "factories/users"

module Samurai
  describe User do
    it "has a valid factory" do
      expect(build(:user)).to be_valid
    end

    it "is invalid without an email" do
      expect(build(:user, email: nil)).to_not be_valid
    end

    it "is invalid without a password" do
      expect(build(:user, password: nil)).to_not be_valid
    end

    it "is invalid with different password and password confirmation" do
      expect(build(:user, password: "pass",
        password_confirmation: "pwd")).to_not be_valid
    end
  end
end
