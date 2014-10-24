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

  def getId(material,color)
    f = Filament.where(["material = ? and color = ?", material, color])
    if f.count != 0
      f = f[0]
    else
      f = Filament.new
      f = f[0]
    end
    filament_id = f
  end
  
end
