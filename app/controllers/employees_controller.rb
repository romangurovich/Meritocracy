class EmployeesController < ApplicationController
	def show
		@employee = Employee.find(params[:id])
	end

	def index
		@employees = Employee.all
	end

	def new
		@employee = Employee.new
		@employee.build_profile
	end

	def create
		@employee = Employee.new(params[:employee])
		if @employee.save
			flash[:notice] = "Employee created: #{@employee.name}"
			redirect_to employee_url(@employee)
		else
			flash.now[:error] = @employee.errors.full_messages
			render :new
		end
	end

	def edit
		@employee = Employee.find(params[:id])
	end

	def update
		@employee = Employee.find(params[:id])
		@employee.assign_attributes(params[:employee])
		if @employee.save
			flash[:notice] = "Employee updated: #{@employee.name}"
			redirect_to employee_url(@employee)
		else
			flash.now[:error] = @employee.errors.full_messages
			render :edit
		end
	end
end