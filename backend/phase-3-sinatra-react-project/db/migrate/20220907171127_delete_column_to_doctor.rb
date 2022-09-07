class DeleteColumnToDoctor < ActiveRecord::Migration[6.1]
  def change
    remove_column :doctors, :password_digest
    add_column :doctors, :password, :integer
  end
end
