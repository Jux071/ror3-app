class ChangeAboutFromTextToString < ActiveRecord::Migration[5.1]
  def change
  	change_column :products, :about, :string
  end
end
