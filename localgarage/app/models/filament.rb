class Filament < ActiveRecord::Base
    has_and_belongs_to_many :printers
end
