class MapsController < ApplicationController
  before_action :set_map, only: [:show, :edit, :update, :destroy]

  def index
    @maps = Map.all
    @hash = Gmaps4rails.build_markers(@maps) do |map,  marker|
      marker.lat map.latitude
      marker.lng map.longitude
      marker.infowindow map.description
      marker.json({title: map.title})
    end
  end


  def show
  end

  def new
    @map = Map.new
  end

  def edit
  end

  def create
    @map = Map.new(map_params)
    @map.save
  end

  def update
    @map.update(map_params)
  end

  def destroy
    @map.destroy
  end

  private
    def set_map
      @map = Map.find(params[:id])
    end

    def map_params
      params.require(:map).permit(:title, :description, :address, :latitude, :longitude)
    end
end
