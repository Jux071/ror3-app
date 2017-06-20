class ChangeAboutFromStringToText < ActiveRecord::Migration[5.1]
  def change
  	change_column :products, :about, :text
  end
end
