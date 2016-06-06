class CreateOnlineExams < ActiveRecord::Migration
  def change
    create_table :online_exams do |t|
      t.string :name
      t.datetime	:start_date
      t.datetime	:end_date
      t.time :maximum_time
      t.decimal :percentage
      t.integer :option_per_question

      t.timestamps
    end
  end
end
