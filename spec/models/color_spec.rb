require 'rails_helper'

RSpec.describe Color, type: :model do
  describe 'associations' do
    it "has_many products" do
      should have_many(:products)
    end 
  end 
end
