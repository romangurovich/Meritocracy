class Employee < ActiveRecord::Base
  attr_accessible :name, :supervisor_id, :profile, :profile_attributes, :team_ids
  validates :name, presence: true, uniqueness: true

  has_many :subordinates, class_name: "Employee", foreign_key: :supervisor_id
  belongs_to :supervisor, class_name: "Employee"

  has_many :team_memberships
  has_many :teams, through: :team_memberships
  has_many :supervised_teams, class_name: "Team", foreign_key: :supervisor_id, inverse_of: :employee

  has_one :profile, class_name: "EmployeeProfile", inverse_of: :employee
  accepts_nested_attributes_for :profile
end
