class GeomapsController < ApplicationController
  def geolocalization

  end

  def index

    @flat_details = FlatDetail.all
    @hash = Gmaps4rails.build_markers(@flat_details) do |flat, marker|
    marker.lat flat.latitude
    marker.lng flat.longitude
    end

  end
end
