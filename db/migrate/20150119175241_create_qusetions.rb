class CreateQusetions < ActiveRecord::Migration
  def change
    create_table :qusetions do |t|
      t.string :question
      t.references :question_type, index: true
      t.integer :question_count

      t.timestamps
    end
  end
end
