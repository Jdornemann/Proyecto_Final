class AvatarsController < ApplicationController
  before_action :authenticate_owner! 
  def index
    
  end
end
