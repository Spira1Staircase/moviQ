class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :creater_id, null: false, default: ""
      t.integer :project_status, null: false, default: 0
      t.text    :demand, null: false, default: ""
      t.date    :time_limit, null: false, default: ""
      t.integer :reward, null: false, default: ""
      t.timestamps
    end
  end
end
