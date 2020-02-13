class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.integer :employer_id
      t.string  :title, null: false, default: ""
      t.text    :content
      t.datetime    :deadline, null: false
      t.datetime    :delivery_date, null: false
      t.integer :wage
      t.string  :payment_method, null: false, default: ""
      t.integer :payday
      t.integer :offer_status, null: false, default: 0
      t.timestamps
    end
  end
end
