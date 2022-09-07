class ChangeRowInPatients < ActiveRecord::Migration[6.1]
  def change
    remove_column :patients, :appointment_id 
  end
end
