class CreatePrivilegeTags < ActiveRecord::Migration
  def change
    create_table :privilege_tags do |t|
      t.string :name_tag
      t.timestamps
    end
  end
end
