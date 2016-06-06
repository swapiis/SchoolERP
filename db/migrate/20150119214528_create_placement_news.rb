class CreatePlacementNews < ActiveRecord::Migration
  def change
    create_table :placement_news do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
