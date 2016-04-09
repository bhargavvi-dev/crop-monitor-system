class Crop < ActiveRecord::Base
	has_many :farmcrops
	has_many :farms, through: :farmcrops
end
