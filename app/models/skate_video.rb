class SkateVideo < ActiveRecord::Base

# has many through - declaration
	has_many :video_parts
#	has_many :skaters, through: :video_parts, source: :skater # conditions here?

# validations - form entry validations
	validates :videoname, :videoyear, :videocompany, presence: true
	validates :videoyear, length: { is: 4 }

end