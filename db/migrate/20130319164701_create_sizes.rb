class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :length
      t.string :unit

      t.timestamps
    end
  end
end
