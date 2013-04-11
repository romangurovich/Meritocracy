class EmployeeProfile < ActiveRecord::Base
  attr_accessible :employee_id, :role, :summary

  balongs_to :employee
end
