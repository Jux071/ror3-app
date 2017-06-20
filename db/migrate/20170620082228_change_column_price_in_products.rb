class ChangeColumnPriceInProducts < ActiveRecord::Migration[5.1]
  def up
 		change_column_null :products, :price, false
 	end

 	def down
 		change_column_null :products, :price, true
  end
end
