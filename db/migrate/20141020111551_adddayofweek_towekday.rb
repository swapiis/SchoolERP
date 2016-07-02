class AdddayofweekTowekday < ActiveRecord::Migration
  def change
    add_column :weekdays, :day_of_week, :integer
  end
end
