class CreateTeamMemberships < ActiveRecord::Migration
  def change
    create_table :team_memberships do |t|
      t.integer :employee_id
      t.integer :team_id

      t.timestamps
    end
  end
end
