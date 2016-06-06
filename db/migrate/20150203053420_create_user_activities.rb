class CreateUserActivities < ActiveRecord::Migration
  def change
    create_table :user_activities do |t|
      t.references :user, index: true
      t.string :modelname
      t.integer :model_id
      t.string :action

      t.timestamps
    end
  end
end
