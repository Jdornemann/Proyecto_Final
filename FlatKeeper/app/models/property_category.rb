class PropertyCategory < ApplicationRecord
    belongs_to :property_type
    has_many :flat_details
end
