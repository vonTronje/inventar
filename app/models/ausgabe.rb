class Ausgabe < ActiveRecord::Base
  attr_accessible :ausgabedatum, :kommentar, :rueckgabedatum, :attribute

  validates :ausgabedatum, presence: true
end
