require 'spec_helper'

describe Mobilfunkgeraet do
  before do @mobilfunkgeraet = Mobilfunkgeraet.new(typ: 'TYP',
												   geraete_pin: 'PIN',
												   telefonnummer: '1234567890',
												   imei: 'duhduu291i3',
												   kommentar: 'ein tolles Ding')
  end

  subject { @mobilfunkgeraet }

  it { should respond_to(:typ) }
  it { should respond_to(:geraete_pin) }
  it { should respond_to(:telefonnummer) }
  it { should respond_to(:imei) }
  it { should respond_to(:kommentar) }

  describe "when imei is not present" do
  	before { @mobilfunkgeraet.imei = " " }
  	it { should_not be_valid }
  end

  describe "when telefonnummer in not present" do
  	before { @mobilfunkgeraet.telefonnummer = " " }
  	it { should_not be_valid }
  end

  describe "when geraetepin is not present" do
  	before { @mobilfunkgeraet.geraete_pin = " " }
  	it { should_not be_valid }
  end

  describe "when imei is already present" do
  	before do
  	  mobilfunkgeraet_dup = @mobilfunkgeraet.dup
  	  mobilfunkgeraet_dup.save
  	end
  	it { should_not be_valid }
  end
end
