class CreateBankFields < ActiveRecord::Migration
  def change
    create_table :bank_fields do |t|
      t.string :name
      t.boolean :status

      t.timestamps
    end
  end
end
