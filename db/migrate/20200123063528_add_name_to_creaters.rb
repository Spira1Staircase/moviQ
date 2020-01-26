class AddNameToCreaters < ActiveRecord::Migration[5.2]
  def change
    add_column :creaters, :name, :string
    add_column :creaters, :kana_name, :string
    add_column :creaters, :address, :string
    add_column :creaters, :introduction, :text
    add_column :creaters, :skill, :text
    add_column :creaters, :career, :integer
    add_column :creaters, :cost, :integer
    add_column :creaters, :creater_status, :integer
	add_column :creaters, :age, :integer
  end
end
