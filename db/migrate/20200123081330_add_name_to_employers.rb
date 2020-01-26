class AddNameToEmployers < ActiveRecord::Migration[5.2]
  def change
    add_column :employers, :employer_name, :string, null: false, default: ""
    add_column :employers, :summary, :text
    add_column :employers, :employer_status, :integer, null: false, default: 0
  end
end
