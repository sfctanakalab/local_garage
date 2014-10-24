class Printer < ActiveRecord::Base
 # belongs_to :user
  has_and_belongs_to_many :filaments

  def self.search(search)
    if search
      Printer.where(['material LIKE ?',"%#{search}%"])
    else
      Printer.all
    end
  end

end
