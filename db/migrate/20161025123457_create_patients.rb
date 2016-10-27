class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :lname
      t.string :fname

      t.timestamps null: false
    end
  end
end
