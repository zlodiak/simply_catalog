class RenameColorInProducts < ActiveRecord::Migration
  def change
    rename_column :products, :color, :color_id
  end
end
