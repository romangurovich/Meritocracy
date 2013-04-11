class TeamsController < ApplicationController
	def show
		@team = Team.find(params[:id])
	end

	def index
		@teams = Team.all
	end

	def new
		@team = Team.new
	end

	def create
		@team = Team.new(params[:team])
		if @team.save
			flash[:notice] = "Team created: #{@team.name}"
			redirect_to team_url(@team)
		else
			flash.now[:error] = @team.errors.full_messages
			render :new
		end
	end

	def edit
		@team = Team.find(params[:id])
	end

	def update
		@team = Team.find(params[:id])
		@team.assign_attributes(params[:team])
		if @team.save
			flash[:notice] = "Team updated: #{@team.name}"
			redirect_to team_url(@team)
		else
			flash.now[:error] = @team.errors.full_messages
			render :edit
		end
	end
end
