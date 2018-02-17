class AddHeadshotUrlToCastaways < ActiveRecord::Migration[5.1]
  def change
    add_column :castaways, :headshot_url, :string
  end
end
