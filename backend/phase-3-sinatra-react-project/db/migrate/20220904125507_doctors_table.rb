class DoctorsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.integer :appointment_id
      t.string :password
      t.string :email
      t.timestamps
    end
  end
end
