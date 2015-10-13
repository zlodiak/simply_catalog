require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'associations' do
    it "belongs_to color" do
      should belong_to(:color)
    end
  end 
end
