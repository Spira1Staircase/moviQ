class Request < ApplicationRecord
	has_one :project
	belongs_to :offer
	belongs_to :creater
	enum request_status: {申請中:0, 契約済:1}
	validates :opinion, presence: true
	validates :hope_salary, presence: true
	validates :production_span, presence: true
end
