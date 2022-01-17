class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.string :title
      t.integer :price
      
      t.timestamps
    end
  end
end
