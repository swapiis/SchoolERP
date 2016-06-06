class CreateStudentAnswerSheets < ActiveRecord::Migration
  def change
    create_table :student_answer_sheets do |t|
      t.references :student_exams, index: true
      t.references :question_databases, index: true
      t.references :options, index: true

      t.timestamps
    end
  end
end
