class Product < ActiveRecord::Base
  belongs_to :color
  
  acts_as_nested_set


end
