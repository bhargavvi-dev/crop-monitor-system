class Sensor < ActiveRecord::Base
	has_one :farmsensor
	has_one :farm, through: :farmsensor
end
