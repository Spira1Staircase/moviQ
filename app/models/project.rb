class Project < ApplicationRecord
	belongs_to :request
	belongs_to :offer
	accepts_nested_attributes_for :request
	enum offer_status: {製作中: 0,製作完了: 1}
end
