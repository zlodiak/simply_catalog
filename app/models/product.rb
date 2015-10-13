class Product < ActiveRecord::Base
  belongs_to :color

  validates :title, presence: true
  
  acts_as_nested_set


end
