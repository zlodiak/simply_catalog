require 'rails_helper'

RSpec.describe "Products", type: :request do
  describe "GET /products" do
    it "http status ok" do
      get products_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /products/new" do
    it "http status ok" do
      get new_product_path
      expect(response).to have_http_status(200)
    end
  end  

  describe "GET /products/:id" do
    it "http status ok" do
      @product = FactoryGirl.create(:product, color_id: :red_color) 
      get product_path(@product)
      expect(response).to have_http_status(200)
    end
  end    
end
