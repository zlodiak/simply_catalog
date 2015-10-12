class AddColsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :title, :string
    add_column :products, :description, :text
    add_column :products, :price, :integer
    add_column :products, :weight, :integer
    add_column :products, :color, :integer
  end
end
