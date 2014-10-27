class FilamentsController < ApplicationController
  

  def index
    
  end


  def show
  end

  
  def new
    
  end

  
  def edit
  end

  
  def create
    @printer = Printer.find(params[:printer_id])
    @filament = @printer.filaments.create(filament_params)
    
  end

  def update
    
  end


  def destroy
    
  end

  private
    def filament_params
      params[:filament].permit(:material, :printer_id)
    end
  end