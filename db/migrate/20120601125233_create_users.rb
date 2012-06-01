class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :vorname
      t.string :nachname
      t.string :abteilung
      t.string :position
      t.string :email
      t.string :telefonnummer
      t.string :kommentar
      t.string :anrede
      t.boolean :beschaeftigt

      t.timestamps
    end
  end
end
