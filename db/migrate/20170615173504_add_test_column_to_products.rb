class AddTestColumnToProducts < ActiveRecord::Migration[5.1]
  def change
  	add_column :products, :test, :integer
  end
end
