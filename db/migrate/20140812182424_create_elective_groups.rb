class CreateElectiveGroups < ActiveRecord::Migration
  def change
    create_table :elective_groups do |t|
      t.string :name
      t.references :batch, index: true
      t.boolean :is_deleted, default: false

      t.timestamps
    end
  end
end
