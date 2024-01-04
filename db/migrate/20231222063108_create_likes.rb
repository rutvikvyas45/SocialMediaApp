class CreateLikes < ActiveRecord::Migration[7.1]
  def change
    create_table :likes do |t|
      t.references :post
      t.references :user

      t.timestamps
    end
  end
end
