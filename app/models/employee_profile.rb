class EmployeeProfile < ActiveRecord::Base
  attr_accessible :employee_id, :role, :summary

  belongs_to :employee
end
