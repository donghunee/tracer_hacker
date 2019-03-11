class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :post, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :pick 
      t.timestamps null: false
    end
  end
end
