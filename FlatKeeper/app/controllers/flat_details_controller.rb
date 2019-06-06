class FlatDetailsController < ApplicationController
  before_action :set_flat_detail, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_owner! 
  def index
    @flat_details = FlatDetail.all
  end

  # GET /flat_details/1
  # GET /flat_details/1.json
  def show
  end

  # GET /flat_details/new
  def new
    @owner = Owner.find_by_id(current_owner)
    @property_type = PropertyType.pluck(:description, :id)
    @property_class = PropertyClaseType.pluck(:description, :id)
    @property_category = PropertyCategory.pluck(:category, :id)
    @flat_detail = FlatDetail.new
  
  
  end

  # GET /flat_details/1/edit
  def edit
  end

  # POST /flat_details
  # POST /flat_details.json
  def create
  
    @flat_detail = FlatDetail.new(flat_detail_params)
    @flat_detail.owner = current_owner

    respond_to do |format|
      
      if @flat_detail.save
        format.html { redirect_to @flat_detail, notice: 'Flat was successfully created.' }
        format.json { render :show, status: :created, location: @flat_detail }
      else
        format.html { render :new }
        format.json { render json: @flat_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @flat_detail.update(flat_detail_params)
        format.html { redirect_to @flat_detail, notice: 'Flat was successfully updated.' }
        format.json { render :show, status: :ok, location: @flat_detail }
      else
        format.html { render :edit }
        format.json { render json: @flat_detail.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @flat_detail.destroy
    respond_to do |format|
      format.html { redirect_to flat_details_url, notice: 'Flat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flat_detail
      @flat_detail = FlatDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flat_detail_params
      params.require(:flat_detail).permit(:flat_detail_id,:status_cleaning_id,:name_alias,:address,:city,:country,:floor,:area_size,:room_quantity,:bed_quantity,:bathroom_quantity,:business_purpose,:property_type_id,:property_category_id,:property_clase_type_id)
    end

end
