class EmployeeProfileProfilesController < ApplicationController
	def show
		@employee_profile = EmployeeProfile.find(params[:id])
	end

	def index
		@employee_profiles = EmployeeProfile.all
	end

	def new
		@employee_profile = EmployeeProfile.new
	end

	def create
		@employee_profile = EmployeeProfile.new(params[:employee_profile]) #maybe :profile
		if @employee_profile.save
			flash[:notice] = "Success"
			redirect_to employee_url(@employee_profile.employee)
		else
			flash.now[:error] = @employee_profile.errors.full_messages
			render :new
		end
	end

	def edit
		@employee_profile = EmployeeProfile.find(params[:id])
	end

	def update
		@employee_profile = EmployeeProfile.find(params[:id])
		@employee_profile.assign_attributes(params[:employee_profile])
		if @employee_profile.save
			flash[:notice] = "Success"
			redirect_to employee_url(@employee_profile.employee)
		else
			flash.now[:error] = @employee_profile.errors.full_messages
			render :edit
		end
	end
end
