class ChangeAboutFromTextToString1 < ActiveRecord::Migration[5.1]
 def up
 	change_column :products, :about, :string
 end

 def down
 	change_column :products, :about, :text
  end

end