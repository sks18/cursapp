class Card < ActiveRecord::Base
has_many :periods
validates :lastname, :firstname, :typeoftreatment, :nomer, :dateofcreation, :pindex, :city, :street, :house, :passportseries, :passportnumber, :passsportfrom, :passportwhen,      presence: true
validates :typeoftreatment, inclusion: { in: ['Платно','Бесплатно'] }
validates :insurancepolicy, :nomer, uniqueness: true
validates :passportseries, uniqueness: {scope: [:passportnumber]}
  def self.search(params)
      result = Card.joins(:periods)
    if params[:lastname].present?
      result = result.where(lastname: params[:lastname])
    end
    if params[:firstname].present?
      result = result.where(firstname: params[:firstname])
    end
    if params[:secondname].present?
      result = result.where(secondname: params[:secondname])
    end
    if params[:nomer].present?
      result = result.where(nomer: params[:nomer])
    end
    if params[:insurancepolicy].present?
      result = result.where(insurancepolicy: params[:insurancepolicy])
    end
    if params[:typeoftreatment].present?
      result = result.where(typeoftreatment: params[:typeoftreatment])
    end
    if params[:dateofcreation].present?
      result = result.where(dateofcreation: params[:dateofcreation])
    end
    if params[:pindex].present?
      result = result.where(pindex: params[:pindex])
    end
    if params[:city].present?
      result = result.where(city: params[:city])
    end
    if params[:street].present?
      result = result.where(street: params[:street])
    end
    if params[:house].present?
      result = result.where(house: params[:house])
    end
    if params[:building].present?
      result = result.where(building: params[:building])
    end
    if params[:flat].present?
      result = result.where(flat: params[:flat])
    end
    if params[:telephone].present?
      result = result.where(telephone: params[:telephone])
    end
    if params[:passportseries].present?
      result = result.where(passportseries: params[:passportseries])
    end
    if params[:passportnumber].present?
      result = result.where(passportnumber: params[:passportnumber])
    end
    if params[:passsportfrom].present?
      result = result.where(passsportfrom: params[:passsportfrom])
    end
    if params[:passportwhen].present?
      result = result.where(passportwhen: params[:passportwhen])
    end
    if params[:allergy].present?
      result = result.where(allergy: params[:allergy])
    end
    
  result.all.uniq
  end
end

