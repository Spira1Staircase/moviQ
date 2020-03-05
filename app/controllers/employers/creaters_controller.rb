class Employers::CreatersController < ApplicationController
	before_action :authenticate_employer!
	def index
		@q = Creater.ransack(params[:q])
		@creaters = @q.result(distinct: true).page(params[:page]).per(8)
	end
	def show
		@creater = Creater.find(params[:id])
	end
end
