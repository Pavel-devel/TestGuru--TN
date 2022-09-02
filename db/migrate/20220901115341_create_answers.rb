class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.string :title, null: false
      t.integer :questions_id

      t.timestamps
    end
  end
end
