class AddReferToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :refer, :string
  end
end
