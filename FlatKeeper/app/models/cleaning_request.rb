class CleaningRequest < ApplicationRecord
belongs_to :coordinator
belongs_to :flat_detail
belongs_to :house_keeper
belongs_to :owner
end
