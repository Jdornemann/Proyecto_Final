class PropertyType < ApplicationRecord
    has_many :flat_details
    has_many :property_categories
    
end
