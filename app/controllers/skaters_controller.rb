class SkatersController < ApplicationController

	def new
		@skater = Skater.new
	end

	def create
		@skater = Skater.new(skater_params)

		if @skater.save
			redirect_to @skater
		else
			render 'new'
		end
	end

	def show
		@skater = Skater.find(params[:id])
	end

	def index
		@skaters = Skater.all
	end

	def edit
		@skater = Skater.find(params[:id])
	end

	def update
		@skater = Skater.find(params[:id])

		if @skater.update(skater_params)
			redirect_to @skater
		else
			render 'edit'
		end
	end

	def destroy
		@skater = Skater.find(params[:id])
		@skater.destroy

		redirect_to skaters_path
	end

	private
		def skater_params
			params.require(:skater).permit(:fname, :lname, :dob, :city, :state, :country,
				:stance, :status, :height, :weight)
		end

end
