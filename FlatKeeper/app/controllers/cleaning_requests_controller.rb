class CleaningRequestsController < ApplicationController
  before_action :set_cleaning_request, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_house_keeper! 
  before_action :authenticate_owner! 
  # GET /cleaning_requests
  # GET /cleaning_requests.json
  def index
    @cleaning_requests = CleaningRequest.all
   
   
  end

  # GET /cleaning_requests/1
  # GET /cleaning_requests/1.json
  def show
  end

  # GET /cleaning_requests/new
  def new
    @owner = Owner.find_by_id(current_owner)
    @flat_detail = FlatDetail.where(owner: current_owner).pluck(:name_alias, :id)
    @status_cleaning = StatusCleaning.pluck(:status, :id)
    @cleaning_request = CleaningRequest.new
   
  end

  # GET /cleaning_requests/1/edit
  def edit
  end

  # POST /cleaning_requests
  # POST /cleaning_requests.json
  def create
  
    @cleaning_request = CleaningRequest.new(cleaning_request_params)
    @cleaning_request.owner = current_owner

    
    respond_to do |format|
      
      if @cleaning_request.save
        format.html { redirect_to @cleaning_request, notice: 'Cleaning request was successfully created.' }
        format.json { render :show, status: :created, location: @cleaning_request }
      else
        format.html { render :new }
        format.json { render json: @cleaning_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cleaning_requests/1
  # PATCH/PUT /cleaning_requests/1.json
  def update
    respond_to do |format|
      #b.update!(house_keeper_id: 1) to asign the keeper to the request
      #b.update!(coordinator_id: 1)
      if @cleaning_request.update(cleaning_request_params)
        format.html { redirect_to @cleaning_request, notice: 'Cleaning request was successfully updated.' }
        format.json { render :show, status: :ok, location: @cleaning_request }
      else
        format.html { render :edit }
        format.json { render json: @cleaning_request.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # DELETE /cleaning_requests/1
  # DELETE /cleaning_requests/1.json
  def destroy
    @cleaning_request.destroy
    respond_to do |format|
      format.html { redirect_to cleaning_requests_url, notice: 'Cleaning request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cleaning_request
      @cleaning_request = CleaningRequest.find(params[:id])
      # @status_cleaning =  CleaningRequest.find(params[:id]).status_cleaning.status
    

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cleaning_request_params
      params.require(:cleaning_request).permit(:flat_detail_id,:status_cleaning_id,:guest_name,:guest_phone,:guest_checkin,:guest_comment)
    end
end
