class Creaters::OffersController < ApplicationController
	before_action :authenticate_creater!
	def index
		@q = Offer.ransack(params[:q])
		@offers = @q.result(distinct: true).page(params[:page]).per(10)
	end
	def show
		@offer = Offer.find(params[:id])
	end
  private
	def offer_params
		params.require(:offer).permit(:employer_id,:title,:content,:deadline,:delivery_date,:wage,:payment_method,:payday,:offer_status)
	end
end
