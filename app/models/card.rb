class Card < ActiveRecord::Base
has_many :periods
validates :lastname, :firstname, :typeoftreatment, :nomer, :dateofcreation, :pindex, :city, :street, :house, :passportseries, :passportnumber, :passsportfrom, :passportwhen,      presence: true
validates :typeoftreatment, inclusion: { in: ['Платно','Бесплатно'] }
validates :insurancepolicy, :nomer, uniqueness: true
validates :passportseries, uniqueness: {scope: [:passportnumber]}
end

