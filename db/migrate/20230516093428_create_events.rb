class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.belongs_to :user
      t.string :title
      t.text :content
      t.string :location
      t.integer :price
  
      t.timestamps
    end
  end
end
