class CreateOnlineExamQuestions < ActiveRecord::Migration
  def change
    create_table :online_exam_questions do |t|
      t.references :online_exam, index: true
      t.string :question
      t.integer :marks
      t.integer :is_answer
      t.string :option_group, array: true

      t.timestamps
    end
  end
end
