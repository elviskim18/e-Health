class PatientsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :telephone_number
      t.date :date_of_birth
      t.text :symptoms
      t.text :diagnosis
      t.integer :appointment_id
      t.timestamps
    end
  end
end
