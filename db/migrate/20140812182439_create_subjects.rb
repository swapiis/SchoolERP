class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :code
      t.references :batch, index: true
      t.boolean :no_exams, default: false
      t.integer :max_weekly_classes
      t.references :elective_group, index: true
      t.boolean :is_deleted, default: false

      t.timestamps
    end
  end
end
