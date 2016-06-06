class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :option
      t.boolean :is_answer
      t.references :question_database, index: true
      t.timestamps
    end
  end
end
