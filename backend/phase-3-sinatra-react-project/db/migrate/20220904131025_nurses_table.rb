class NursesTable < ActiveRecord::Migration[6.1]
  def change
   create_table :nurses do |t|
    t.string :name
    t.integer :job_id
    t.string :email
    t.timestamps
   end
  end
end
