class ChangeColumnUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :gender, :string
  end
end
