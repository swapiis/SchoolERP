class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :code
      t.string :section_name
      t.string :grading_type
      t.boolean :is_deleted, default: false

      t.timestamps
    end
  end
end
