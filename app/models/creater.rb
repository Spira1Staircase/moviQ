class Creater < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_many :articles
	has_many :projects
	has_many :requests
	enum creater_status: {対応可: 0, 不可: 1, 退会済: 2}
end
