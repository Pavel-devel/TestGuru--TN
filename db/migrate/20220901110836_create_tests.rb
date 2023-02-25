class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.string :title, null: false, unique: true
      t.integer :level, default: 0, unique: true
      t.references :category, null: false, foreign_key: :true
      t.references :author, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
