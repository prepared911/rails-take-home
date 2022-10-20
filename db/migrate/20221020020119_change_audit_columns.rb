class ChangeAuditColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :audits, :variables, :string
    add_column :audits, :raw, :string
    remove_column :audits, :data
    remove_column :audits, :action
  end
end
