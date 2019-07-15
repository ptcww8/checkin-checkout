class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :ssn
      t.string :picture
      t.text :address
      t.integer :user_id

      t.timestamps
    end
  end
end
