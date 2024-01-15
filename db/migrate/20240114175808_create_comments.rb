class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.integer :blogpost_id
      t.integer :user_id
      t.text :string
      
      t.timestamps
    end
  end
end
