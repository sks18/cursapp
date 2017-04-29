class Ward < ActiveRecord::Base
has_many :periods
validates :floor, :nomer, :otdel, :capacity, presence:true
validates :floor, uniqueness: {scope: [:nomer]}
end

