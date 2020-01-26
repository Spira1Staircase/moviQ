class ChangeCostToCreater < ActiveRecord::Migration[5.2]
  def change
	change_column :creaters, :cost, :integer, null: false, default: 0
  end
end
