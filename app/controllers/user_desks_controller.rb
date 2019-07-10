class UserDesksController < ApplicationController
	before_action :authenticate_user!

	def index
		@user_desks = UserDesk.all
	end

	def show
		@user_desk = UserDesk.find(params[:id])
	end

	def new
		@user_desk = UserDesk.new
	end

	def create
		@user_desk = UserDesk.new(desk_params)
		if @user_desk.save
			redirect_to user_desks_url
		else
			render :new
		end	
	end

	def edit
		@user_desk = UserDesk.find(params[:id])
	end

	def update
		@user_desk = UserDesk.find(params[:id])
		if @user_desk.update_attributes(desk_params)
			redirect_to user_desks_url
		else
			render :edit
		end
	end

	private

	def desk_params
		params.require(:user_desk).permit(:seat, :from_date, :end_date, :created_by)
	end
end
