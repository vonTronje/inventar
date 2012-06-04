require 'spec_helper'

describe "Mobilfunkgeraet pages" do
  
  subject { page }

  describe "new mobilfunkgeraet page" do
  	
  	before { visit new_mobilfunkgeraet_path }

    let(:submit) { "Create Mobilfunkgeraet" }

    it { should have_selector('title', text: 'Inventar | New Mobilfunkgeraet') }

  	describe "with valid information" do
  	  before do
  	  	fill_in "Typ", with: "type a negative"
  	  	fill_in "Geraete pin", with: "123545"
  	  	fill_in "mobilfunkgeraet_telefonnummer", with: "015783913379"
  	  	fill_in "Imei", with: "jhuhfflm132"
  	  	fill_in "Kommentar", with: "nur sone anmerkung irgendwie"
  	  end
      it "should create a user" do
        expect { click_button submit }.to change(Mobilfunkgeraet, :count).by(1)
      end
    end

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(Mobilfunkgeraet, :count)
      end
    end

  end

  describe "index" do

  	before { visit mobilfunkgeraets_path }

  	it { should have_selector('title', text: 'Inventar | All Mobilfunkgeraet') }

  	Mobilfunkgeraet.all.each do |geraet|
  	  it { should have_content(geraet.imei) }
  	end
  end

  describe "details" do
  	let(:mobilfunkgeraet) { FactoryGirl.create(:mobilfunkgeraet) }

  	before { visit mobilfunkgeraet_path(mobilfunkgeraet) }

  	it { should have_selector('title', text: 'Inventar | Mobilfunkgeraet') }
  	it { should have_content('IMEI') }
  end
	
end