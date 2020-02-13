class Employers::CreatersController < ApplicationController
	before_action :authenticate_employer!
	def index
		@creaters = Creater.all
	end
	def show
		@creater = Creater.find(params[:id])
	end
end
