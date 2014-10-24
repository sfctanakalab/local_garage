class Printer < ActiveRecord::Base
 # belongs_to :user
  validates :address, presence: true
  has_many :printer_filament_links
  has_many :filaments, :through => :printer_filament_links
  geocoded_by :address
  after_validation :geocode

  def self.search(search)
    if search
      Printer.all
    else
      Printer.all
    end
  end

end
