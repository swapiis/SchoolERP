class CreatePrivileges < ActiveRecord::Migration
  def change
    create_table :privileges do |t|
      t.string :name
      t.references :privilege_tag, index: true
      t.timestamps
    end
  end
end
