class SkateVideosController < ApplicationController

	def new
	end

	def create
		render plain: params[:skate_video].inspect
	end

end
