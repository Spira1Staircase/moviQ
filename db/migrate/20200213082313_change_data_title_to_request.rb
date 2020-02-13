class ChangeDataTitleToRequest < ActiveRecord::Migration[5.2]
  def change
  	change_column :requests, :creater_id, :integer
  end
end
