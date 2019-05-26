class AddStatusCleaningToCleaningRequest < ActiveRecord::Migration[5.2]
  def change
    add_reference :cleaning_requests, :status_cleaning, foreign_key: true
  end
end
