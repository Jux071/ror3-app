class CreateSellers < ActiveRecord::Migration[5.1]
  def change
    create_table :sellers do |t|
    	t.string :name, null: false
    	t.integer :rating

    	t.timestamps
    end
  end
end
