class CleaningRequestsController < ApplicationController
  before_action :set_cleaning_request, only: [:show, :edit, :update, :destroy]

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
    @cleaning_request = CleaningRequest.new
  end

  # GET /cleaning_requests/1/edit
  def edit
  end

  # POST /cleaning_requests
  # POST /cleaning_requests.json
  def create
    @cleaning_request = CleaningRequest.new(cleaning_request_params)

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
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cleaning_request_params
      params.require(:cleaning_request).permit(:status_publishing)
    end
end
