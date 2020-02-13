class AddDetailsToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :offer_id, :integer
    add_column :projects, :request_id, :integer
  end
end
