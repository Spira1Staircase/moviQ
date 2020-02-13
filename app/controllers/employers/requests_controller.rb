class Employers::RequestsController < ApplicationController
	before_action :authenticate_employer!
	def index
		@offer = Offer.find(params[:offer_id])
		@requests = @offer.requests.page(params[:page]).per(10)
	end
	def show
		@employer = current_employer
		@request = Request.find(params[:id])
		@offer = Offer.find(params[:offer_id])
		@creater = Creater.find(@request.creater_id)
	end
	def destroy
		@request = Request.find(params[:id])
		@request.destroy
		@offer = Offer.find(params[:offer_id])
		flash[:notice] = '削除が完了しました'
		redirect_to employers_offer_requests_path(@offer)
	end

	private
	def request_params
	params.require(:request).permit(:creater_id, :offer_id, :opinion, :request_status, :hope_salary, :production_span)
	end
end
