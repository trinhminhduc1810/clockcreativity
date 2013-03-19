class AddColumnCurrencyToInformation < ActiveRecord::Migration
  def up
    add_column :information, :currency, :string
  end

  def down
    remove_column :information, :currency
  end
end
