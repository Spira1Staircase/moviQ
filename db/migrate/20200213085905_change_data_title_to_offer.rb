class ChangeDataTitleToOffer < ActiveRecord::Migration[5.2]
  def change
  	  change_column :offers, :content, :text
  end
end
