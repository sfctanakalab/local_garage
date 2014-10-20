class Printer < ActiveRecord::Base
	# belongs_to :user
  def self.search(search)
    if search
      Printer.where(['material LIKE ?',  "%#{search}%"])
    else
      Printer.all
    end
  end
end
