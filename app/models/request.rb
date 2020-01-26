class Request < ApplicationRecord
	has_one :project
	enum :request_status {申請中:0, 契約済:1}
end
