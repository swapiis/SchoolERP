class CreateQuestionTypes < ActiveRecord::Migration
  def change
    create_table :question_types do |t|
      t.string :que_type

      t.timestamps
    end
  end
end
