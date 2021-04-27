class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :point,               null: false
      t.integer :true,                null: false
      t.integer :miss,                null: false
      t.integer :correct_answer_rate, null: false
      t.references :user,            foreign_key: true
      t.timestamps
    end
  end
end
