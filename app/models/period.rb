class Period < ActiveRecord::Base
  belongs_to :card
  belongs_to :ward
  validates :dateofentrance, :reasonofentrance, :dateofissue, :dischargesummary, presence:true
end
