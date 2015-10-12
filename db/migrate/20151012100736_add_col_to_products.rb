class AddColToProducts < ActiveRecord::Migration
  def change
    add_column :products, :is_catalog, :boolean, default: nil
  end
end
