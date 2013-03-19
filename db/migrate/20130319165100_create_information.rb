class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.integer :product_id
      t.string :language
      t.string :name
      t.text :description
      t.float :price
      t.string :material

      t.timestamps
    end
  end
end
