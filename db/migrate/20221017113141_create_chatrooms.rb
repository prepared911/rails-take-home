class CreateChatrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :chatrooms do |t|
      t.string :label, null: false
      t.boolean :resolved
      t.timestamps
    end
  end
end
