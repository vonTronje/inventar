require 'spec_helper'

describe "User pages" do
  
  subject { page }

  describe "new user page" do
  	before { visit new_user_path }

  	it { should have_selector('title', text: 'Inventar | New User') }
  end
end
