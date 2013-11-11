class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.boolean :answer
      t.integer :question_id
      t.string :session_id

      t.timestamps
    end
  end
end
