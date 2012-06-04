class RenameTeamviewerField < ActiveRecord::Migration
  def up
  	rename_column :pc_austattungs, :team_viewer_id, :teamviewer 
  end

  def down
  	rename_column :pc_austattungs, :teamviewer, :team_viewer_id
  end
end
