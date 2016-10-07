class CreateUserStudent < ActiveRecord::Migration
  def change
    create_table :user_students do |t|
      t.references :user, index: true
      t.references :student, index: true
    end
    add_foreign_key :user_students, :users
    add_foreign_key :user_students, :students
  end
end
