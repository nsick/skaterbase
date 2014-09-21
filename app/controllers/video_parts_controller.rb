class VideoPartsController < ApplicationController
	
	def new
		@video_part = VideoPart.new
	end

	def create
		@skater = Skater.find(params[:skater_id])

		#@skate_video = Skate_Video.find(params[:skate_video_id])

		@skater = @skater.video_parts.create(video_parts_params)

		#@skate_video = @skate_video.video_parts.create(video_parts_params)

		if @video_part.save
			redirect_to @skater
		else
			render 'skater'
		end
	end

	private
		def video_part_params
			params.require(:video_part).permit(:runtime, :artist, :song)
		end
end