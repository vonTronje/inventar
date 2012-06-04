require 'spec_helper'

describe "User pages" do
  
  subject { page }
  
  describe "profile page" do
	  let(:user) { FactoryGirl.create(:user) }
  	before { visit user_path(user) }

  	it { should have_selector('h1', text: "#{user.vorname} #{user.nachname}") }
  	it { should have_selector('title', text: "Inventar | #{user.vorname} #{user.nachname}") }
  end

  describe "signup" do
  	before { visit new_user_path}

  	let(:submit) { "Create my account" }

    it { should have_selector('title', text: 'Inventar | New User') }

    describe "with invalid information" do
      it "should not create a user" do
  	    expect { click_button submit }.not_to change(User, :count)
  	  end
  	end

  	describe "with valid information" do
  	  before do
  	  	fill_in "Vorname",		with: "Hagen"
  	  	fill_in "Nachname",		with: "Mahnke"
  	  	fill_in "Email", 		with: "me@example.com"
  	  	fill_in "Abteilung",	with: "Hoelle"
  	  	fill_in "Position",		with: "Lesser evil"
  	  	fill_in "Anrede",		with: "mr"
  	  	fill_in "Kommentar",	with: "somethin somethin"
  	  end
  	  it "should create a user" do
  	    expect { click_button submit }.to change(User, :count).by(1)
  	  end
  	end
  end

  describe "index" do
    before { visit users_path }

    it { should have_selector('title', text: 'Inventar | All users') }

    User.all.each do |user|
      page.should have_content(user.name)
    end
  end
end
