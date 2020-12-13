class CreateDepartments < ActiveRecord::Migration[6.0]
  def change
    create_table :departments do |t|
      t.integer :company_id
      t.string :department_name

      t.timestamps
    end
  end
end
