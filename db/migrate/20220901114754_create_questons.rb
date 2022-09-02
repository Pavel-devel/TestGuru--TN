class CreateQuestons < ActiveRecord::Migration[7.0]
  def change
    create_table :questons do |t|
      t.string :title, null: false
      t.string :correct, null: false, default: 0
      t.integer :tests_id

      t.timestamps
    end
  end
end
