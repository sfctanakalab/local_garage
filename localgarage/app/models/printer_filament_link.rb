class PrinterFilamentLink < ActiveRecord::Base
    belongs_to :printer
    belongs_to :filament
end
