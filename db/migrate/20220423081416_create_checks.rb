class CreateChecks < ActiveRecord::Migration[7.0]
  def change
    create_table :checks do |t|
      t.string :check_date
      t.string :name
      t.datetime :start_at
      t.datetime :end_at
      t.string :note
      t.integer :use_date
      t.integer :money
      t.integer :people
      t.integer :totalmoney

      t.timestamps
    end
  end
end
