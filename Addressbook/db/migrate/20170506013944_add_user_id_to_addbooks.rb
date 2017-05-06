class AddUserIdToAddbooks < ActiveRecord::Migration[5.0]
  def change
    add_column :addbooks, :user_id, :integer
  end
end
