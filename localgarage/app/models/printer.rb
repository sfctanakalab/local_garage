class Printer < ActiveRecord::Base
 # belongs_to :user
  has_many :printer_filament_links
  has_many :filaments, :through => :printer_filament_links
  geocoded_by :address
  after_validation :geocode

  def self.search(search)
    if search
      Printer.where(['material LIKE ?',"%#{search}%"])
    else
      Printer.all
    end
  end

end
