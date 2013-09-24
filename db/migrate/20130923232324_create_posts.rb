class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :category
      t.string :excerpt, limit: 140
      t.text :content
      t.integer :status, limit: 4, default: 1
      t.integer :parent, default: 0
      t.integer :post_type, limit: 4
      t.integer :comment_status, limit: 4, default: 1

      t.timestamps
    end
  end
end
