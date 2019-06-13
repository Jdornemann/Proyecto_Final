json.extract! cleaning_request, :id,:flat_detail_id,:status_cleaning_id,:guest_name,:guest_checkin, :created_at, :updated_at
json.url cleaning_request_url(cleaning_request, format: :json)