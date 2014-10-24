class Printer < ActiveRecord::Base
 # belongs_to :user
  validates :address, presence: true
  has_and_belongs_to_many :filaments
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
