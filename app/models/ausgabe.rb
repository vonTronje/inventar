class Ausgabe < ActiveRecord::Base
  attr_accessible :ausgabedatum, :kommentar, :rueckgabedatum

  validates :ausgabedatum, presence: true
end
