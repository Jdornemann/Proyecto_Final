class FullCalendarsController < ApplicationController
  
  def index
    @cleaning_requests = CleaningRequest.all
    respond_to do |format|
    format.html 
    format.json { render json: @cleaning_requests.to_json(methods: [:title,:start ,:editable], except:[:created_at,:updated_at,:id,:flat_detail_id,:house_keeper_id,:owner_id,:status_cleaning_id,:coordinator_id,:guest_phone,:guest_comment,:guest_name,:guest_checkin]) }
    end
  end

  def show 

  end
  def edit
  end
  def update 

  end
  def create
  end


end
