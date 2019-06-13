class FlatDetail < ApplicationRecord
    belongs_to :property_type
    belongs_to :property_category   
    belongs_to :property_clase_type     
    belongs_to :owner


    geocoded_by :address
    after_validation :geocode
end
 