class CreateFeeCollectionParticularsStudents < ActiveRecord::Migration
  def change
    create_table :fee_collection_particulars_students do |t|
      t.references :student, index: true
      t.references :fee_collection_particular, [index: true, name: 'particular_id']

      t.timestamps
    end
  end
end
