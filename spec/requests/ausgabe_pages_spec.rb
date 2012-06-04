require 'spec_helper'

describe "Ausgabe pages" do
  
  subject { page }

  describe "create new ausgabe" do

  	before { visit new_ausgabe_path }
  	let(:submit) { "Create Ausgabe" }

  	it { should have_selector('title', text: "Inventar | New Ausgabe") }

  	describe "with valid information" do
  	  before do
  	  	select '2012', from: 'ausgabe_ausgabedatum_1i'
  	  	select 'May', from: 'ausgabe_ausgabedatum_2i'
  	  	select '1', from: 'ausgabe_ausgabedatum_3i'
  	  	select '', from: 'ausgabe_rueckgabedatum_1i'
  	  	select '', from: 'ausgabe_rueckgabedatum_2i'
  	  	select '', from: 'ausgabe_rueckgabedatum_3i'
  	  	fill_in "Kommentar", with: "Blablabla Mr. Freeman"
  	  end

  	  it "should create an Ausgabe" do
  	  	expect {click_button submit}.to change(Ausgabe, :count).by(1)
  	  end
   	end

   	describe "with invalid information" do
   	  
   	  #should probably check that rueckgabedatum > ausgabedatum

   	end
  end

  describe "index" do

  	before { visit ausgabes_path }

  	it { should have_selector('title', text: "Inventar | All Ausgaben") }

  	Ausgabe.all.each do |ausgabe|
  	  it {should have_content(ausgabe.id) }
  	end
  end

  describe "show" do
  	let(:ausgabe){ FactoryGirl.create(:ausgabe) }

  	before { visit ausgabe_path(ausgabe) }

  	it { should have_selector('title', text: "Inventar | Ausgabe") }
  	it { should have_content(ausgabe.id) }
  end
end