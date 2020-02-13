class Creaters::ProjectsController < ApplicationController
	before_action :authenticate_creater!
	def index
		@creater = current_creater
		@projects = Project.where(creater_id: current_creater.id)
	end
	def show
		@creater = current_creater
		@project = Project.find(params[:id])
	end
	def update
		@project = Project.find(params[:id])
		@project.update(project_params)
		flash[:success] = '更新しました'
		redirect_to creaters_project_path(@project)
	end
	private
	def project_params
		params.permit(:project_status)
	end
end
