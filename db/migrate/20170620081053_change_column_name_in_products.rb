class ChangeColumnNameInProducts < ActiveRecord::Migration[5.1]
  def up
 		change_column_null :products, :name, false
 	end

 	def down
 		change_column_null :products, :name, true
  end
end
