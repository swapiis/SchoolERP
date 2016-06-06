class CreateLiabilities < ActiveRecord::Migration
  def change
    create_table :liabilities do |t|
      t.string :title
      t.text :description
      t.decimal :amount
      t.boolean :is_solved, default: false
      t.boolean :is_deleted, default: false

      t.timestamps
    end
  end
end
