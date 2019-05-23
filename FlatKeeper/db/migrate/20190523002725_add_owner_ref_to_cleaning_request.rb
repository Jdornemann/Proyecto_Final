class AddOwnerRefToCleaningRequest < ActiveRecord::Migration[5.2]
  def change
    add_reference :cleaning_requests, :owner, foreign_key: true
    
  end
end
