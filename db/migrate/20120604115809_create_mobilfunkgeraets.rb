class CreateMobilfunkgeraets < ActiveRecord::Migration
  def change
    create_table :mobilfunkgeraets do |t|
      t.string :typ
      t.string :geraete_pin
      t.string :telefonnummer
      t.string :imei
      t.string :kommentar

      t.timestamps
    end
  end
end
