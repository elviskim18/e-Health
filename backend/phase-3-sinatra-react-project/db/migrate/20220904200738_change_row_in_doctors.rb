class ChangeRowInDoctors < ActiveRecord::Migration[6.1]
  def change
    remove_column :doctors, :password
  end
end
