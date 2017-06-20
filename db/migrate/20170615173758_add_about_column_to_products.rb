class AddAboutColumnToProducts < ActiveRecord::Migration[5.1]
  def change
  	add_column :products, :about, :text
  end
end
