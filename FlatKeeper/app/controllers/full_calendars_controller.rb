class FullCalendarsController < ApplicationController
  before_action :set_cleaning_request, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_owner! 
  def index
    @cleaning_requests = CleaningRequest.all
    respond_to do |format|
    format.html 
    format.json { render json: @cleaning_requests.to_json(methods: [:id,:title,:start ,:editable], except:[:created_at,:updated_at,:id,:flat_detail_id,:house_keeper_id,:owner_id,:status_cleaning_id,:coordinator_id,:guest_phone,:guest_comment,:guest_name,:guest_checkin]) }
    end
  end

  def show 

  end
  def edit
  end
  def update 
    respond_to do |format|
     
      if @cleaning_request.update(cleaning_request_params)
        format.html { redirect_to full_calendars_path, notice: 'Cleaning request was successfully updated.' }
        format.json { render :show, status: :ok, location: @cleaning_request }
        format.js 
      else
        format.html { render :edit }
        format.json { render json: @cleaning_request.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end
  def create
  end
  private
  
  def set_cleaning_request
    @cleaning_request = CleaningRequest.find(params[:id])
    @owner = Owner.find_by_id(current_owner)
    @flat_detail = FlatDetail.where(owner: current_owner).pluck(:name_alias, :id)
    @status_cleaning = StatusCleaning.pluck(:status, :id)
  end
  def cleaning_request_params
    params.require(:cleaning_request).permit(:flat_detail_id,:status_cleaning_id,:guest_name,:guest_phone,:guest_checkin,:guest_comment)
  end
end
