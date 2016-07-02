class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :statement
      t.references :newscast, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
