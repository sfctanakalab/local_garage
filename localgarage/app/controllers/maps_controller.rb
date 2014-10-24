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
    respond_to do |format|
      if @map.save
        format.html { redirect_to @map, notice: 'Map was successfully created.' }
        format.json { render :show, status: :created, location: @map }
      else
        format.html { render :new }
        format.json { render json: @map.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @map.update(map_params)
        format.html { redirect_to @map, notice: 'Map was successfully updated.' }
        format.json { render :show, status: :ok, location: @map }
      else
        format.html { render :edit }
        format.json { render json: @map.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @map.destroy
    respond_to do |format|
      format.html { redirect_to maps_url, notice: 'Map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_map
      @map = Map.find(params[:id])
    end

    def map_params
      params.require(:map).permit(:title, :description, :address, :latitude, :longitude)
    end
end
