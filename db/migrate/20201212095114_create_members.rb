class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.integer :department_id
      t.string :member_name

      t.timestamps
    end
  end
end
