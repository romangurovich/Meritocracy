class Team < ActiveRecord::Base
  attr_accessible :name, :supervisor_id, :member_ids

  belongs_to :supervisor, class_name: "Employee", inverse_of: :supervised_teams
  has_many :memberships, class_name: "TeamMembership"
  has_many :members, through: :memberships, source: :employee 
end
