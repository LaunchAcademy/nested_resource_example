class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :category_id, null: false

      t.timestamps
    end

    add_index :products, :category_id
  end
end
