class AddAwesomeToProducts < ActiveRecord::Migration
  def change
    add_column :products, :parent_id, :integer
    add_column :products, :lft, :integer
    add_column :products, :rgt, :integer
  end
end
