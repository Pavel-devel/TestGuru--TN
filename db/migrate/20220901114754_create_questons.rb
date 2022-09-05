class CreateQuestons < ActiveRecord::Migration[7.0]
  def change
    create_table :questons do |t|
      t.string :title, null: false
      t.boolean :correct, null: false
      t.reference :test_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
