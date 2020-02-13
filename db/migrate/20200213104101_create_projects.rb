class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :creater_id
      t.integer :offer_id
      t.integer :request_id
      t.integer :project_status, null: false, default: 0
      t.text    :demand
      t.datetime    :time_limit, null: false, default: ""
      t.integer :reward, null: false, default: ""
      t.timestamps
    end
  end
end
