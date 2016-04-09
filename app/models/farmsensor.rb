class Farmsensor < ActiveRecord::Base
  belongs_to :farm
  belongs_to :sensor
end
