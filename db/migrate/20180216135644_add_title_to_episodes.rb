class AddTitleToEpisodes < ActiveRecord::Migration[5.1]
  def change
    add_column :episodes, :title, :string, default: "", null: false
  end
end
