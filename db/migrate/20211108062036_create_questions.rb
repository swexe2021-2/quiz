class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :question
      t.binary :img
      t.string :answer
      t.string :comment

      t.timestamps
    end
  end
end
