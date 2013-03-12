class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :code
      t.text :description
      t.integer :size_id
      t.integer :type_id
      t.string :material
      t.float :price

      t.timestamps
    end
  end
end
