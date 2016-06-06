class CreateRankingLevels < ActiveRecord::Migration
  def change
    create_table :ranking_levels do |t|
      t.string :name
      t.decimal :gpa
      t.decimal :marks
      t.integer :subject_count
      t.integer :prioriy
      t.boolean :full_course
      t.references :course, index: true
      t.string :subject_limit_type
      t.string :marks_limit_type

      t.timestamps
    end
  end
end
