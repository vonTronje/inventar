require 'spec_helper'

describe "PcAustattung pages" do

  subject { page }

  describe "new" do
  	let(:submit) { "Create PC-Austattung" }

    before { visit new_pc_austattung_path }

    it { should have_selector('title', text: 'Inventar | New PC-Austattung') }

    describe "with invalid information" do
      it "should not create a pc_austattung" do
      	expect {click_button submit }.not_to change(PcAustattung, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Kommentar", with: "sooooo toll"
        fill_in "Mac lan", with: "118273jh"
        fill_in "Mac wlan", with: "92uhrk1m2"
        fill_in "Modell", with: "mac book pro"
        fill_in "Service tag", with: "jknwiou2"
        fill_in "Status", with: "kaputt"
        fill_in "Teamviewer", with: "2jz8413hk"
      end

      it "should create a pc_austattung" do
      	expect { click_button submit }.to change(PcAustattung, :count).by(1)
      end
    end 
  end

  describe "index" do

  	before { visit pc_austattungs_path }

  	it { should have_selector('title', text: 'Inventar | All PC Austattungen') }
  end

  describe "details" do
  	
  	let(:pc_austattung) { FactoryGirl.create(:pc_austattung) }
    before { visit pc_austattung_path(pc_austattung) }

  	it { should have_selector('title', text: 'Inventar | PC-Austattung') }
  	it { should have_content('service_tag') }

  end
end