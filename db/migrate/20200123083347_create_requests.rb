class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :creater_id, null: false, default: ""
      t.integer :offer_id, null: false, default: ""
      t.text :opinion, null: false, default: ""
      t.integer :request_status, null: false, default: 0
      t.integer :hope_salary, null: false, default: 0
      t.integer :production_span, null: false, default: 1
      t.timestamps
    end
  end
end