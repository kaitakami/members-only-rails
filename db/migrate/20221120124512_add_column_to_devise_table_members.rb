class AddColumnToDeviseTableMembers < ActiveRecord::Migration[7.0]
  def change
    add_column :members, :username, :string
    rename_column :posts, :user_id, :member_id
  end
end
