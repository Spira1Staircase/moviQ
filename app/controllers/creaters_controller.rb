class CreatersController < ApplicationController
	protect_from_forgery
	before_action :authenticate_creater!
	before_action :set_creater, only: [:show, :edit, :update, :destroy, :creater_status]
	def show
	end
	def cancel
		@creater = current_creater
	end
	def edit
		@creater = current_creater
	end
	def update
		@creater = current_creater
		url = params[:creater][:youtube_url]
    	url = url.last(11)
   		@creater.youtube_url = url
		@creater.update(creater_params)
		flash[:notice] = "更新しました"
		redirect_to creater_path(@creater)
	end
	def creater_status
		@creater.creater_status!
		redirect_to destroy_creater_session_path
	end

	private
	def creater_params
		params.require(:creater).permit(:email, :name, :kana_name,:address,:introduction,:skill,:career,:cost,:creater_status,:age)
	end
	def set_creater
		@creater = current_creater || Creater.find(params[:id])
	end
end
