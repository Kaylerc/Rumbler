class CreatePostsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :image_url
      t.string :username
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :likes
    end
  end
end
