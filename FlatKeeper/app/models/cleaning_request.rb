class CleaningRequest < ApplicationRecord
belongs_to :coordinator ,optional: true
belongs_to :house_keeper, optional: true
belongs_to :flat_detail
belongs_to :owner 
belongs_to :status_cleaning  

end
