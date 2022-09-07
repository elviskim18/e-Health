class AddRowsToPatients < ActiveRecord::Migration[6.1]
  def change
    add_column :patients, :gender, :string
    add_column :patients, :weight, :integer
    add_column :patients, :bloodtype, :string
  end
end
