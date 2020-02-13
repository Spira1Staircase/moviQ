class Employers::CreatersController < ApplicationController
	before_action :authenticate_employer!
	def index
		@creaters = Creater.all.page(params[:page]).per(15)
	end
	def show
		@creater = Creater.find(params[:id])
	end
end
