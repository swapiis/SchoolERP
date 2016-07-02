class CreateQuestionDatabases < ActiveRecord::Migration
  def change
    create_table :question_databases do |t|
      t.references :question_type, index: true
      t.string :question
      t.integer :no_of_option
      t.timestamps
    end
  end
end
