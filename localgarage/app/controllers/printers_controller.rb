class PrintersController < ApplicationController
  before_action :set_printer, only: [:show, :edit, :update, :destroy, :image]
  before_action :authenticate_user!, only: [:show]
  # GET /printers
  # GET /printers.json

  def index
    @printer = Printer.all
    @printers = Printer.all
    @hoge = params[:search]
    @hash = Gmaps4rails.build_markers(@printer) do |printer,  marker|
      marker.lat printer.latitude
      marker.lng printer.longitude
      marker.infowindow printer.description
      marker.json({title: printer.title})
    

    end
  end

  # GET /printers/1
  # GET /printers/1.json
  def show
    # @printerfilamentlink = PrinterFilamentLink.new(printerfilamentlink_params)
    # p = @printer
    # @printerfilamentlink.printer_id = p.id
    # @printerfilamentlink.filament_id = filament_id

    # respond_to do |format|
    #   if @printerfilamentlink.save
    #     format.html { redirect_to @printer, notice: 'Printer was successfully created.' }
    #     format.json { render :show, status: :created, location: @printerfilamentlink }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @printerfilamentlink.errors, status: :unprocessable_entity }
    #   end
    # end

  end

  # GET /printers/new
  def new
    @printer = Printer.new
  end

  # GET /printers/1/edit
  def edit
  end

  # POST /printers
  # POST /printers.json
  def create
    @printer = Printer.new(printer_params)
    # what is current_user.id?
    @printer.user_id = current_user.id
    # upload image
    @printer.image = params[:printer][:image].read 
    # @printer.printer_id = params[:id]

    respond_to do |format|
      if @printer.save
        format.html { redirect_to @printer, notice: 'Printer was successfully created.' }
        format.json { render :show, status: :created, location: @printer }
      else
        format.html { render :new }
        format.json { render json: @printer.errors, status: :unprocessable_entity }
      end
    end

    
  end

  # PATCH/PUT /printers/1
  # PATCH/PUT /printers/1.json
  def update

    @printer.image = params[:printer][:image].read 
    respond_to do |format|
      if @printer.update(printer_params)
        format.html { redirect_to @printer, notice: 'Printer was successfully updated.' }
        format.json { render :show, status: :ok, location: @printer }
      else
        format.html { render :edit }
        format.json { render json: @printer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /printers/1
  # DELETE /printers/1.json
  def destroy
    @printer.destroy
    respond_to do |format|
      format.html { redirect_to printers_url, notice: 'Printer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def image
    send_data(@printer.image, disposition: :inline)
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    
    def set_printer
      @printer = Printer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def printer_params
      params.require(:printer).permit(:machinemodel, :sizex, :sizey, :sizez, :resolution, :location, :image_url, :condition, :user_id, :title, :description, :address, :latitude, :longitude)
    end
    def printerfilamentlink_params
      params.permit(:printer_id, :filament_id)
    end
  
end