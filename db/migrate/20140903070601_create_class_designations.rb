class CreateClassDesignations < ActiveRecord::Migration
  def change
    create_table :class_designations do |t|
      t.string :name
      t.decimal :cgpa
      t.decimal :marks
      t.references :course, index: true

      t.timestamps
    end
  end
end
