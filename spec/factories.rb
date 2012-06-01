FactoryGirl.define do
  factory :user do
    vorname "Hagen"
    nachname "Mahnke"
    email "hagen@example.com"
    telefonnummer "123456789"
    position "boss"
    abteilung "jaaaaaaaaaaanz weit oben"
    anrede "Herr"
    beschaeftigt true
    kommentar "der beste"
  end
end