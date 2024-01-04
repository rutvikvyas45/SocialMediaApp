class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.references :user
      t.text :description

      t.timestamps
    end
  end
end
