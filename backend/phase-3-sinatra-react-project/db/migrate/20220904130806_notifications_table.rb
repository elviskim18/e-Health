class NotificationsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.integer :doctor_id
      t.text :about
    end
  end
end
