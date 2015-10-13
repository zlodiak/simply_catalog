require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'associations' do
    it "belongs_to color" do
      should belong_to(:color)
    end
  end 

  describe 'title' do
    it "is valid with title" do
      expect(FactoryGirl.create(:product, color_id: :red_color)).to be_valid
    end  

    it "is invalid without title" do
      expect(FactoryGirl.build(:product, title: nil, color_id: :red_color)).not_to be_valid
    end        
  end    
end
