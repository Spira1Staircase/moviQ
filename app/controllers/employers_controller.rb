class EmployersController < ApplicationController
	protect_from_forgery
	before_action :authenticate_employer!
	before_action :set_employer, only: [:show, :edit, :update, :destroy, :employer_status]
	def show
	end
	def edit
		@employer = current_employer
	end
	def update
		@employer = current_employer
		@employer.update(employer_params)
		flash[:notice] = "更新しました"
		redirect_to employer_path
	end
	def cancel
		@employer = current_employer
	end
	def employer_status
		@employer.employer_status!
		redirect_to destroy_employer_session_path
	end

	private
	def employer_params
		params.require(:employer).permit(:employer_name, :summary, :employer_status)
	end
	def set_employer
		@employer = current_employer || Employer.find(params[:id])
	end
end
