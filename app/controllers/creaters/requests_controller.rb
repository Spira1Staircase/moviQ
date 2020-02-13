class Creaters::RequestsController < ApplicationController
	before_action :authenticate_creater!, only: [:new,:create,:index]
	def new
		@offer = Offer.find(params[:offer_id])
		@request = Request.new
	end
	def create
		@creater = current_creater
		@offer = Offer.find(params[:offer_id])
		@request = Request.new(request_params)
		@request.creater_id = current_creater.id
		@request.offer_id = @offer.id
		if  @request.save
			flash[:notice] = '申請が完了しました'
			redirect_to edit_creaters_offer_request_path(@offer,@request)
		else
			flash[:alert] = '申請に失敗しました'
			render :new
		end
	end
	def index
		@creater = current_creater
		@requests = @creater.requests
	end
	def edit
		@creater = current_creater
		@request = Request.find(params[:id])
		@offer = Offer.find(params[:offer_id])
	end
	def destroy
		@request = Request.find(params[:id])
		@request.destroy
		flash[:notice] = '削除が完了しました'
		redirect_to creaters_requests_path
	end
  private
	def request_params
		params.require(:request).permit(:creater_id,:offer_id,:opinion,:request_status,:hope_salary,:production_span,:payment_method)
	end
end
