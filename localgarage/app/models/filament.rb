class Filament < ActiveRecord::Base
  has_many :printer_filament_links
  has_many :printers, :through => :printer_filament_links
end
