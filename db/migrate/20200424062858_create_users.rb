class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :account_type
      t.string :first_name
      t.string :last_name
      t.string :email
      t.bigint :phone_number
      t.bigint :zip_code
      t.boolean :lead_active
      t.boolean :call_scheduled
      t.datetime :first_contact_date
      t.integer :first_contact_status
      t.datetime :second_contact_date
      t.integer :second_contact_status
      t.datetime :third_contact_date
      t.integer :third_contact_status
      t.integer :entry_point

      t.timestamps
    end
  end
end
