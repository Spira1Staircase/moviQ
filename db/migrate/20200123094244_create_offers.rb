class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.integer :employer_id
      t.string  :title, null: false, default: ""
      t.text    :content, null: false, default: ""
      t.date    :deadline, null: false, default: ""
      t.date    :delivery_date, null: false, default: ""
      t.integer :wage, null: false, default: ""
      t.string  :payment_method, null: false, default: ""
      t.integer :payday, null: false, default: ""
      t.integer :offer_status, null: false, default: 0
      t.timestamps
    end
  end
end
