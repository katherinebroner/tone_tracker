require 'rails_helper'

# RSpec.describe User, type: :model do
describe User do
  let(:user) { User.create(username: Faker::Internet.user_name, email: Faker::Internet.email, password: Faker::Internet.password)}

  describe "#validations" do
    it "is a valid User object" do
      expect(user).to be_valid
    end

    let(:invalid_user) { User.create( username: nil, email: nil, password: nil)}
    it "is an invalid User object" do
      expect(invalid_user).not_to be_valid
    end

    let(:invalid_user) { User.create( username: Faker::Internet.user_name, email: nil, password: nil)}
    it "is an invalid User object" do
      expect(invalid_user).not_to be_valid
    end

    let(:invalid_user) { User.create(
      username: Faker::Internet.user_name, email: Faker::Internet.email, password: nil)}
    it "is an invalid User object" do
      expect(invalid_user).not_to be_valid
    end

    let(:invalid_user) { User.create( username: nil, email: Faker::Internet.email, password: nil)}
    it "is an invalid User object" do
      expect(invalid_user).not_to be_valid
    end

    let(:invalid_user) { User.create(
      username: nil, email: Faker::Internet.email, password: Faker::Internet.password)}
    it "is an invalid User object" do
      expect(invalid_user).not_to be_valid
    end

    let(:invalid_user) { User.create(
      username: nil, email: nil, password: Faker::Internet.password)}
    it "is an invalid User object" do
      expect(invalid_user).not_to be_valid
    end

    let(:invalid_user) { User.create(username: Faker::Internet.user_name, email: nil, password: Faker::Internet.password)}
    it "is an invalid User object" do
      expect(invalid_user).not_to be_valid
    end
  end
end
