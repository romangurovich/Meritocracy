class TeamMembership < ActiveRecord::Base
  attr_accessible :employee_id, :team_id

  belongs_to :team
  belongs_to :employee
end
