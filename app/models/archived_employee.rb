# ArchivedEmployee
class ArchivedEmployee < ActiveRecord::Base
  include Activity
  belongs_to :employee_category
  belongs_to :employee_position
  belongs_to :employee_grade
  belongs_to :employee_department
  belongs_to :nationality, class_name: 'Country'
  has_many :archived_employee_bank_details
  has_many :archived_employee_additional_details
  scope :shod, ->(id) { where(id: id).take }
end
