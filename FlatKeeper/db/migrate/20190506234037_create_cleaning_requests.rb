class CreateCleaningRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :cleaning_requests do |t|
      t.integer :status_publishing

      t.timestamps
    end
  end
end
