class CreateExamGroups < ActiveRecord::Migration
  def change
    create_table :exam_groups do |t|
      t.string :name
      t.references :batch, index: true
      t.string :exam_type
      t.boolean :is_published, default: false
      t.boolean :result_published, default: false
      t.date :exam_date

      t.timestamps
    end
  end
end
