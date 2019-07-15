class CreateTimers < ActiveRecord::Migration[5.2]
  def change
    create_table :timers do |t|
      t.datetime :time_in
      t.datetime :time_out
      t.integer :employee_id

      t.timestamps
    end
  end
end
