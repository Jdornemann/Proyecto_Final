class CleaningRequest < ApplicationRecord
belongs_to :coordinator ,optional: true
belongs_to :house_keeper, optional: true
belongs_to :flat_detail
belongs_to :owner 
belongs_to :status_cleaning  


def start
    guest_checkin
    
end
def title
    guest_name
end

def editable
    Date.today < guest_checkin ? true : false
end

def to_json(options = {})
options[:methods] = :start
options[:methods] = :title
options[:methods] = :editable

end

end
