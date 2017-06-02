class PeriodsController < ApplicationController
  before_action :set_period, only: [:show, :edit, :update, :destroy]

  # GET /periods
  # GET /periods.json
  def index
    @periods = Period.all
  end

  # GET /periods/1
  # GET /periods/1.json
  def show
  end

  # GET /periods/new
  def new
    @period = Period.new
    @period.build_card
  end

  # GET /periods/1/edit
  def edit
  end

  # POST /periods
  # POST /periods.json
  def create
	newcard = Card.find_or_create_by(lastname: period_params[:card_attributes][:lastname],
	                                 firstname: period_params[:card_attributes][:firstname],
	                                 secondname: period_params[:card_attributes][:secondname],
	                                 nomer: period_params[:card_attributes][:nomer],
	                                 insurancepolicy: period_params[:card_attributes][:insurancepolicy],
	                                 typeoftreatment: period_params[:card_attributes][:typeoftreatment],
	                                 dateofcreation: period_params[:card_attributes][:dateofcreation],
	                                 pindex: period_params[:card_attributes][:pindex],
	                                 city: period_params[:card_attributes][:city],
	                                 street: period_params[:card_attributes][:street],
	                                 house: period_params[:card_attributes][:house],
	                                 building: period_params[:card_attributes][:building],
	                                 flat: period_params[:card_attributes][:flat],
	                                 telephone: period_params[:card_attributes][:telephone],
	                                 passportseries: period_params[:card_attributes][:passportseries],
	                                 passportnumber: period_params[:card_attributes][:passportnumber],
	                                 passsportfrom: period_params[:card_attributes][:passsportfrom],
	                                 passportwhen: period_params[:card_attributes][:passportwhen],
	                                 allergy: period_params[:card_attributes][:allergy])                            
    @period = Period.new(ward_id: period_params[:ward_id], card: newcard, dateofentrance: period_params[:dateofentrance], reasonofentrance: period_params[:reasonofentrance], dateofissue: period_params[:dateofissue], dischargesummary: period_params[:dischargesummary])
    respond_to do |format|
      if @period.save
        format.html { redirect_to @period, notice: 'Новая запись была успешно создана.' }
        format.json { render :show, status: :created, location: @period }
      else
        format.html { render :new }
        format.json { render json: @period.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /periods/1
  # PATCH/PUT /periods/1.json
  def update
    respond_to do |format|
      if @period.update(period_params)
        format.html { redirect_to @period, notice: 'Period was successfully updated.' }
        format.json { render :show, status: :ok, location: @period }
      else
        format.html { render :edit }
        format.json { render json: @period.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /periods/1
  # DELETE /periods/1.json
  def destroy
    @period.destroy
    respond_to do |format|
      format.html { redirect_to periods_url, notice: 'Period was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_period
      @period = Period.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def period_params
      params.require(:period).permit(:dateofentrance, :reasonofentrance, :dateofissue, :dischargesummary, :card_id, :ward_id, card_attributes:[:id,:_destroy, :lastname, :firstname, :secondname, :nomer, :insurancepolicy, :typeoftreatment, :dateofcreation, :pindex, :city, :street, :house, :building, :flat, :telephone, :passportseries, :passportnumber, :passsportfrom, :passportwhen, :allergy])
    end
end
