class VideoPartsController < ApplicationController

	def create
		@skater = Skater.find(params[:skater_id])
		@video_part = @skater.video_parts.create(video_part_params)
		redirect_to skater_path(@skater)

		@skate_video = Skate_Video.find(params[:skate_video_id])
		@skate_video = @skate_video.video_parts.create(video_parts_params)
		redirect_to skate_video_path(@skate_video)

	end

	private
		def video_part_params
			params.require(:video_part).permit(:runtime, :artist, :song, :part_length)
		end
end