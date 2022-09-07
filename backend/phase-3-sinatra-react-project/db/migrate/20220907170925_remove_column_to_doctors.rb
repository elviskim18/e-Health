class RemoveColumnToDoctors < ActiveRecord::Migration[6.1]
  def change
    remove_column :doctors, :appointment_id
  end
end
