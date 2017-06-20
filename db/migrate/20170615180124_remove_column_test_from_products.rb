class RemoveColumnTestFromProducts < ActiveRecord::Migration[5.1]
  def change
  	remove_column :products, :test, :integer
  end
end
