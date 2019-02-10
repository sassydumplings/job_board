class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.text :notes
      t.references :job
      t.references :user

      t.timestamps
    end
  end
end
