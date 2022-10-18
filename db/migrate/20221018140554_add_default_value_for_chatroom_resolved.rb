class AddDefaultValueForChatroomResolved < ActiveRecord::Migration[7.0]
  def change
    change_column :chatrooms, :resolved, :boolean, :default => false
  end
end
