class VideoPart < ActiveRecord::Base

	# has many through association - this is the "through" table
	belongs_to :skater # polymorphic: true - not sure about this yet...
	# belongs_to :skate_video


	def part_length(runtime)
		self.runtime.to_s[10,15]
	end

end
