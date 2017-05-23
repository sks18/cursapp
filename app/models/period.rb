class Period < ActiveRecord::Base
  belongs_to :card, dependent: :destroy
  belongs_to :ward
  accepts_nested_attributes_for :card, allow_destroy: true 
  validates :dateofentrance, :reasonofentrance, :dateofissue, :dischargesummary, :card_id, presence:true
end
