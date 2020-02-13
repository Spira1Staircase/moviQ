class Offer < ApplicationRecord
	has_many :requests
	has_many :projects
	enum offer_status: {募集中: 0, 募集終了: 1}
	validates :title, presence: true
	validates :content, presence: true
	validates :deadline, presence: true
	validates :delivery_date, presence: true
	validates :wage, presence: true
	validates :payment_method, presence: true
	validates :payday, presence: true
end
