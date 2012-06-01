require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    
    it "should have the content 'Inventar'" do
      visit root_path
      page.should have_selector('title', text: 'Inventar')
    end
  end

  describe "Readme" do
  	it "should have the content 'Inventar | Readme'" do
  	  visit readme_path
  	  page.should have_selector('title', text: 'Inventar | Readme')
  	end
  end
end
