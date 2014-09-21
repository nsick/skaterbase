class SkateVideosController < ApplicationController

	def new
		@skate_video = SkateVideo.new
	end

	def create
		@skate_video = SkateVideo.new(skate_video_params)

		if @skate_video.save
			redirect_to @skate_video
		else
			render 'new'
		end
	end

	def index
		@skate_videos = SkateVideo.all
	end

	def show
		@skate_video = SkateVideo.find(params[:id])
	end

	def edit
		@skate_video = SkateVideo.find(params[:id])
	end

	def update
		@skate_video = SkateVideo.find(params[:id])

		if @skate_video.update(skate_video_params)
			redirect_to @skate_video
		else
			render 'edit'
		end
	end

	def destroy
		@skate_video = SkateVideo.find(params[:id])
		@skate_video.destroy

		redirect_to skate_videos_path
	end

	private
		def skate_video_params
			params.require(:skate_video).permit(:videoname, :videoyear, :videocompany)
		end

end
