class CreateStudentExams < ActiveRecord::Migration
  def change
    create_table :student_exams do |t|
      t.references :placement_exams, index: true
      t.references :students, index: true

      t.timestamps
    end
  end
end
