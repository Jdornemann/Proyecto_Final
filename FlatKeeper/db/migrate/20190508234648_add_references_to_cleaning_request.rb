class AddReferencesToCleaningRequest < ActiveRecord::Migration[5.2]
  def change
    add_reference :cleaning_requests, :flat_detail, foreign_key: true
    add_reference :cleaning_requests, :house_keeper, foreign_key: true
    add_reference :cleaning_requests, :owner_property, foreign_key: true
  end
end
