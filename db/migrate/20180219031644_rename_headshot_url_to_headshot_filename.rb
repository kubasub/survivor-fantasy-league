class RenameHeadshotUrlToHeadshotFilename < ActiveRecord::Migration[5.1]
  def change
    rename_column :castaways, :headshot_url, :headshot_filename
  end
end
