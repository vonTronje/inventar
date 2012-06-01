# == Schema Information
#
# Table name: users
#
#  id            :integer         not null, primary key
#  vorname       :string(255)
#  nachname      :string(255)
#  abteilung     :string(255)
#  position      :string(255)
#  email         :string(255)
#  telefonnummer :string(255)
#  kommentar     :string(255)
#  anrede        :string(255)
#  beschaeftigt  :boolean
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

require 'spec_helper'

describe User do
  
  before do @user = User.new(vorname: 'Example',
  							nachname: 'User',
  							anrede: 'Mr',
  							position:'Master of the universe',
  							abteilung: 'gods',
  							beschaeftigt: true,
  							email: 'agod@work.uni',
  							telefonnummer: '1',
  							kommentar: 'kneel before his might and magic')
  end

  subject { @user }

  it { should respond_to(:vorname) }
  it { should respond_to(:nachname) }
  it { should respond_to(:anrede) }
  it { should respond_to(:position) }
  it { should respond_to(:abteilung) }
  it { should respond_to(:beschaeftigt) }
  it { should respond_to(:email) }
  it { should respond_to(:telefonnummer) }
  it { should respond_to(:kommentar) }

  it { should be_valid }

  describe "when vorname is not present" do
  	before { @user.vorname = " " }
  	it { should_not be_valid }
  end

  describe "when nachname is not present" do
  	before { @user.nachname = " " }
  	it { should_not be_valid }
  end

  describe "when email format is invalid" do
  	it "should be invalid" do
  	  addresses = %w[user@foo,com user_at_foo.org example.user@foo.
  	  				 foo@bar_baz.com foo@bar+baz.com]
  	  addresses.each do |invalid_address|
  	  	@user.email = invalid_address
  	  	@user.should_not be_valid
  	  end
  	end
  end

  describe "when email format is valid" do
  	it "should be valid" do
  	  addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
  	  addresses.each do |valid_address|
  	  	@user.email = valid_address
  	  	@user.should be_valid
  	  end
  	end
  end

  describe "when email address already exists" do
  	before do
  	  	existing_user = @user.dup
  	  	existing_user.email = @user.email.upcase
  	  	existing_user.save
  	end
  	it { should_not be_valid }
  end
end
