class Employer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,
		   :recoverable, :rememberable, :validatable
	has_many :offers
    enum employer_status: {有効: 0, 無効: 1 }
    validates :employer_name, presence: true
    validates :employer_status, inclusion: { in: Employer.employer_statuses.keys }
    def self.find_for_authentication(conditions)
    super(conditions.merge(:employer_status => "有効"))
    end
    def employer_status!
    	if 有効?
    		無効!
    	else
    		無効!
    	end
    end
    def inactive_message
    無効? super :invaild_status
    end
end
