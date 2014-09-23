class Skater < ActiveRecord::Base

# has many :through association
	has_many :video_parts
	accepts_nested_attributes_for :video_parts
	# has_many :skate_videos, through: :video_parts, source: :skate_video # conditions here?

# form entry validations
	validates :fname, :lname, :stance, presence: true
#	validates :dob, length: { is: 4, message: "Must be four digits long" },
#		numericality: { only_integer: true, message: "Must be a number" },
#		inclusion: { :in => [1950,2010], message: "Birth year must be between 1950 and 2010"}

# variable manipulations - add all post input variable functions here
	def fullname
		fname + " " + lname
	end

	def age(dob)
		now = Time.now.utc.to_date
		now.year - dob.year - ((now.month > dob.month || 
			(now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
	end

	def part_length(runtime)
		runtime.to_s[10,15]
	end

# This will be an alternative to calculating age from DOB above - many DOBs will be missing
#	def yearage(dob)
#		now = Time.now.utc.to_date
#		now.year - dob
#	end

	def origin
		city + ", " + state.to_s + ", " + country
	end

end