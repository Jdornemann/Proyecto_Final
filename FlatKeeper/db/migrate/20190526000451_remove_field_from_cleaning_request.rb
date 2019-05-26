class RemoveFieldFromCleaningRequest < ActiveRecord::Migration[5.2]
  def change
    remove_column :cleaning_requests, :status_publishing, :integer
  end
end
