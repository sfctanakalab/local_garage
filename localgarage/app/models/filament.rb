class Filament < ActiveRecord::Base
  has_many :printer_filament_links
  has_many :filaments, :through => :printer_filament_links
end
