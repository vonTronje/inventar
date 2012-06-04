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

  factory :pc_austattung do
    kommentar "somethin something"
    mac_lan "213jnjb"
    mac_wlan "nbedbkj.s"
    modell "mac book pro"
    service_tag "hgqjfn"
    status "kaputt"
    teamviewer "jwhduq39e21"
    typ "das beste und  neuste und schoenste"
  end
end