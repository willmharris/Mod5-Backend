class CreateCases < ActiveRecord::Migration[6.0]
  def change
    create_table :cases do |t|
      t.boolean :active
      t.datetime :planned_date
      t.string :planned_location
      t.datetime :confirmed_date
      t.string :confirmed_location

      t.timestamps
    end
  end
end
