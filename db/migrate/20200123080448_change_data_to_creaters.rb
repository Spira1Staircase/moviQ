class ChangeDataToCreaters < ActiveRecord::Migration[5.2]
  def change
  	change_column :creaters, :name, :string
    change_column :creaters, :kana_name, :string
    change_column :creaters, :career, :integer, null: false, default: 0
    change_column :creaters, :cost, :integer, null: false, default: 0
    change_column :creaters, :creater_status, :integer, null: false, default: 0
	change_column :creaters, :age, :integer
  end
end
