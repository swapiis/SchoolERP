class CreateNewscasts < ActiveRecord::Migration
  def change
    create_table :newscasts do |t|
      t.string :title
      t.text :content
      t.references :user, index: true

      t.timestamps
    end
  end
end
