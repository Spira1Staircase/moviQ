class ApplicationController < ActionController::Base
	def after_sign_in_path_for(resources)
		if creater_signed_in?
			flash[:notice] = "ログインしました"
			creater_path(current_creater)
		else
			flash[:notice] = "ログインしました"
			employer_path(current_employer)
		end
	end

	def after_sign_out_path_for(resources)
		flash[:notice] = "ログアウトしました"
		root_path
	end
end
