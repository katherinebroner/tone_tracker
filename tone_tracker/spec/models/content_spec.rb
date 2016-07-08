require 'rails_helper'

# RSpec.describe Content, type: :model do
describe Content do
  let(:content) { Content.create(body: Faker::Lorem.paragraph) }

  describe "#validations" do
    it "is a valid Content object" do
      expect(content).to be_valid
    end

    let(:invalid_content) { Content.create(body: nil) }
    it "is an invalid Content object" do
      expect(invalid_content).not_to be_valid
    end
  end
end
