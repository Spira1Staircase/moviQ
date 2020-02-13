class Employers::OffersController < ApplicationController
	before_action :authenticate_employer!
	def index
		@offers = Offer.all
	end
	def show
		@employer = current_employer
		@offer = Offer.find(params[:id])
	end
	def new
		@employer = current_employer
		@offer = Offer.new
	end
	def create
		@employer = current_employer
		@offer = Offer.new(offer_params)
		@offer.employer_id = current_employer.id
		if  @offer.save
			flash[:notice] = '発注が完了しました'
			redirect_to employers_offer_path(@offer)
		else
			flash[:alert] = '作成に失敗しました'
			render :new
		end
	end
	def edit
		@offer = Offer.find(params[:id])
	end
	def update
		@offer = Offer.find(params[:id])
		@offer.update(offer_params)
		flash[:success] = 'Success'
		redirect_to employers_offer_path(@offer)
	end
	def destroy
		@offer = Offer.find(params[:id])
		@offer.destroy
		flash[:success] = 'Success'
		redirect_to employers_offers_path
	end
	private
	def offer_params
		params.require(:offer).permit(:employer_id,:title,:content,:deadline,:delivery_date,:wage,:payment_method,:payday,:offer_status)
	end
end
