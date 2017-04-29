class Card < ActiveRecord::Base
has_many :periods
validates :lastname, :firstname, :typeoftreatment, :dateofcreation, :pindex, :city, :street, :house, :passportseries, :passportnumber, :passsportfrom, :passportwhen,      presence: true
validates :typeoftreatment, inclusion: { in: ['Платно','Бесплатно'] }
validates :insurancepolicy, uniqueness: true
validates :passportseries, uniqueness: {scope: [:passportnumber]}
end

