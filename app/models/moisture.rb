class Moisture < ActiveRecord::Base
  belongs_to :farm
  belongs_to :crop
end
