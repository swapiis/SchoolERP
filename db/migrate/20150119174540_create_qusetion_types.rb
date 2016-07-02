class CreateQusetionTypes < ActiveRecord::Migration
  def change
    create_table :qusetion_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
