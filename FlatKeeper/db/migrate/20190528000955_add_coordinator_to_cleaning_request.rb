class AddCoordinatorToCleaningRequest < ActiveRecord::Migration[5.2]
  def change
    add_reference :cleaning_requests, :coordinator, foreign_key: true
  end
end
