class Skater < ActiveRecord::Base

# has many :through association
	has_many :video_parts
	has_many :skate_videos, through: :video_parts, source: :skate_video # conditions here?

# form entry validations
	validates :fname, :lname, :stance, presence: true
	validates :dob, length: { is: 10 }

# variable manipulations - add all post input variable functions here
	def fullname
		fname + " " + lname
	end

	def age(dob)
		now = Time.now.utc.to_date
		now.year - dob.year - ((now.month > dob.month || 
			(now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
	end

	def origin
		city + ", " + state.to_s + ", " + country
	end

end