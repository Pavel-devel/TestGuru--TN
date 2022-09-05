class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.string :title, null: false
      t.integer :level, default: 0
      t.reference :category_id, null: false, foreign_key: true
      t.reference :author, null: false ,foreign_key: :users

      t.timestamps
    end
  end
end
