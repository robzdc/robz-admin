class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.text :description
      t.integer :parent, default: 0
      t.integer :status, default: 1

      t.timestamps
    end
  end
end
