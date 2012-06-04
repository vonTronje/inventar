class PcAustattung < ActiveRecord::Base
  attr_accessible :kommentar, :mac_lan, :mac_wlan, :modell, :service_tag, :status, :teamviewer, :typ

  validates :service_tag, presence: true
end
