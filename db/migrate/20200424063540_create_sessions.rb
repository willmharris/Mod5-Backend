class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.datetime :date
      t.string :location
      t.integer :case_id

      t.timestamps
    end
  end
end
