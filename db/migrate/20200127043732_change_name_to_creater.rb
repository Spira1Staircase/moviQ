class ChangeNameToCreater < ActiveRecord::Migration[5.2]
  def change
	change_column :creaters, :name, :string
  end
end
