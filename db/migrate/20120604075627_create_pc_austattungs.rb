class CreatePcAustattungs < ActiveRecord::Migration
  def change
    create_table :pc_austattungs do |t|
      t.string :typ
      t.string :modell
      t.string :service_tag
      t.string :mac_wlan
      t.string :mac_lan
      t.string :kommentar
      t.string :team_viewer_id
      t.string :status

      t.timestamps
    end
  end
end
