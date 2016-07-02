class Addquestiontype < ActiveRecord::Migration
  def change
    rename_column :qusetion_types, :type, :que_type
  end
end
