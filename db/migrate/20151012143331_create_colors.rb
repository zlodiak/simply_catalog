class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
