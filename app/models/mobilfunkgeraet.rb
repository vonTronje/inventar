class Mobilfunkgeraet < ActiveRecord::Base
  attr_accessible :geraete_pin, :imei, :kommentar, :telefonnummer, :typ

  validates :imei, presence:  true, uniqueness: true
  validates :geraete_pin, presence: true
  validates :telefonnummer, presence: true
end
