class CreateUserCases < ActiveRecord::Migration[6.0]
  def change
    create_table :user_cases do |t|
      t.integer :user_id
      t.integer :case_id
      t.datetime :first_contact_date
      t.integer :first_contact_status
      t.datetime :second_contact_date
      t.integer :second_contact_status
      t.datetime :third_contact_date
      t.integer :third_contact_status
      t.boolean :planned_session_confirmed
      t.integer :team
      t.string :team_relationship

      t.timestamps
    end
  end
end
