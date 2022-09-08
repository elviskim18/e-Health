class AddNewRowToPatients < ActiveRecord::Migration[6.1]
  def change
    add_column :patients, :national_id, :integer
  
  end
end
