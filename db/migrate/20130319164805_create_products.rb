class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :size_id
      t.integer :type_id

      t.timestamps
    end
  end
end
