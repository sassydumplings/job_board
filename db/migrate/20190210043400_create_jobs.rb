class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.text :description
      t.string :job_title
      t.string :location
      t.string :employer_name
      t.integer :employer_id

      t.timestamps
    end
  end
end
