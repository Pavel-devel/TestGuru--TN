class CreateQuestons < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.boolean :correct, null: false, default: true
      t.references :test, null: false, foreign_key: true

      t.timestamps
    end
  end
end
