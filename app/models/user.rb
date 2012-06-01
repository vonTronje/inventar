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

class User < ActiveRecord::Base
  attr_accessible :abteilung, :anrede, :beschaeftigt, :email, :kommentar, :nachname, :position, :telefonnummer, :vorname

  before_save { |user| user.email = email.downcase }
  
  validates :vorname, presence: true
  validates :nachname, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

end
