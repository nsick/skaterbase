class SkatersController < ApplicationController

	def new
	end

	def create
		render plain: params[:skater].inspect
	end

	private
		def skater_params
			params.require(:skater).permit(:fname, :lname, :dob, :city, :state, :country,
				:stance, :status, :height, :weight)
		end

end
