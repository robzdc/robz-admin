class CreateUserTypes < ActiveRecord::Migration
  def change
    create_table :user_types do |t|
      t.string :name, null: false
      t.string :icon

      t.timestamps
    end
  end
end
