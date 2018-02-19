class SetHeadshotFilenameToNotNull < ActiveRecord::Migration[5.1]
  def change
    change_column_null :castaways, :headshot_filename, false
  end
end
