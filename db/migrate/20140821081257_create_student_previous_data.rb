class CreateStudentPreviousData < ActiveRecord::Migration
  def change
    create_table :student_previous_data do |t|
      t.references :student, index: true
      t.string :institution
      t.string :year
      t.string :course
      t.string :total_mark

      t.timestamps
    end
  end
end
