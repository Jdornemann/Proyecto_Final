class AddGuestNameToCleaningRequest < ActiveRecord::Migration[5.2]
  def change
    add_column :cleaning_requests, :guest_name, :string
    add_column :cleaning_requests, :guest_phone, :integer
    add_column :cleaning_requests, :guest_checkin, :datetime
    add_column :cleaning_requests, :guest_comment, :string
  end
end
