class Creater < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_many :articles
	has_many :projects
	has_many :requests
	enum creater_status: {対応可: 0, 退会済: 1}
  validates :creater_status, inclusion: { in: Creater.creater_statuses.keys }
  def self.find_for_authentication(conditions)
    super(conditions.merge(:creater_status => "対応可"))
  end
	def creater_status!
    	if 対応可?
         退会済!
    	else
         退会済!
    	end
  end
  def inactive_message
  退会済? super :invaild_status
  end
end
