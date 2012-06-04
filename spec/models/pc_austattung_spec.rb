require 'spec_helper'

describe PcAustattung do
  before do @pc_austattung = PcAustattung.new(kommentar: 'ein Kommentar',
  											   mac_lan: '13124z89',
  											   mac_wlan: '2jjgugh',
  											   modell: 'mac book pro',
  											   service_tag: 'doll',
  											   status: 'ganz ganz heil',
  											   team_viewer_id: '124havjfk',
  											   typ: 'das beste')
  end

  subject { @pc_austattung }

  it { should respond_to(:kommentar) }
  it { should respond_to(:mac_lan) }
  it { should respond_to(:mac_wlan) }
  it { should respond_to(:modell) }
  it { should respond_to(:service_tag) }
  it { should respond_to(:status) }
  it { should respond_to(:team_viewer_id) }
  it { should respond_to(:typ) }
end
