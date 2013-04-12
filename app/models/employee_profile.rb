class EmployeeProfile < ActiveRecord::Base
  attr_accessible :employee_id, :role, :summary
  validates :role, presence: true
	validates :employee_id, presence: true, uniqueness: true

  belongs_to :employee, inverse_of: :profile
end
