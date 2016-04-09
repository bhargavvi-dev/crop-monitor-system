class Farm < ActiveRecord::Base
  belongs_to :farmer
  has_many :farmsensors
  has_many :sensors, through: :farmsensors
  has_one :farmcrop
  has_one :crop, through: :farmcrop

end
