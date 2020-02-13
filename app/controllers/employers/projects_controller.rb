class Employers::ProjectsController < ApplicationController
	before_action :authenticate_employer!
	def new
		@project = Project.new
	end
	def create
		@employer = current_employer
		@project = Project.new(project_params)
		@offer = Offer.find(params[:offer_id])
		@request = Request.find(params[:request_id])
		@project.creater_id = @request.creater_id
		@project.offer_id = @request.offer_id
		@project.request_id = @request.id
		@project.demand = @offer.content
		@project.reward = @offer.wage
		@project.time_limit = @offer.delivery_date
		if  @project.save
			if @request.request_status == "申請中"
				@request.update(request_status: "契約済")
			end
			flash[:notice] = '発注が完了しました'
			redirect_to employers_offer_requests_path(@offer)
		else
			flash[:alert] = '発注に失敗しました'
			render :show
		end
	end
	private
	def project_params
		params.permit(:creater_id,:request_id,:offer_id,:reward,:demand,:project_status,:time_limit, request_attributes: [:id, :request_status])
	end
end
