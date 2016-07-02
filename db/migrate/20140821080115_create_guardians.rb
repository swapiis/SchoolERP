class CreateGuardians < ActiveRecord::Migration
  def change
    create_table :guardians do |t|
      t.references :student, index: true
      t.string :first_name
      t.string :last_name
      t.string :relation

      t.string :email
      t.string :office_phone1
      t.string :office_phone2
      t.string :mobile_phone

      t.string :office_address_line1
      t.string :office_address_line2
      t.string :city
      t.string :state
      t.references :country, index: true

      t.date :dob
      t.string :occupation
      t.string :income
      t.string :education

      t.timestamps
    end
  end
end
