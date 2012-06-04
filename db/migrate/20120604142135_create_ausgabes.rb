class CreateAusgabes < ActiveRecord::Migration
  def change
    create_table :ausgabes do |t|
      t.date :ausgabedatum
      t.date :rueckgabedatum
      t.string :kommentar

      t.timestamps
    end
  end
end
