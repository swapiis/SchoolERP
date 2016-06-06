class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :title
      t.text :description
      t.decimal :amount
      t.boolean :is_inactive, default: false
      t.boolean :is_deleted, default: false

      t.timestamps
    end
  end
end
