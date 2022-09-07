class AddRowsToAppointment < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :time, :integer
  end
end
