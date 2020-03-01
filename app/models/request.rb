class Request < ApplicationRecord
	has_one :project
	enum request_status: {申請中:0, 契約済:1}
	belongs_to :offer
	belongs_to :creater
	validates :opinion, presence: true
	validates :hope_salary, presence: true
	validates :production_span, presence: true
end
