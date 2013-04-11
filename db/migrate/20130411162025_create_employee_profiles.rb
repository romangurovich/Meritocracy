class CreateEmployeeProfiles < ActiveRecord::Migration
  def change
    create_table :employee_profiles do |t|
      t.integer :employee_id
      t.string :role
      t.text :summary

      t.timestamps
    end
  end
end
