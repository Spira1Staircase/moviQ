class ApplicationController < ActionController::Base
	def after_sign_in_path_for(resources)
		if creater_signed_in?
			creater_path(current_creater)
		else
			emproyer_path(current_employer)
		end
	end

	def after_sign_out_path_for(resources)
		root_path
	end
end
