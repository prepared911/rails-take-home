class CreateAudits < ActiveRecord::Migration[7.0]
  def change
    create_table :audits do |t|
      t.string :timestamp
      t.string :action
      t.string :data
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
