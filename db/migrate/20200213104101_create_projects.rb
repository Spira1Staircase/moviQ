class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :creater_id
      t.integer :offer_id
      t.integer :request_id
      t.integer :project_status, null: false, default: 0
      t.text    :demand
      t.datetime    :time_limit, null: false
      t.integer :reward
      t.timestamps
    end
  end
end
