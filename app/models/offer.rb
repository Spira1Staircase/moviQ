class Offer < ApplicationRecord
	has_many :requests
	enum offer_status: {募集中: 0, 募集終了: 1}
end
