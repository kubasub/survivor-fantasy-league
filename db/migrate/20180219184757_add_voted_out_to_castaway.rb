class AddVotedOutToCastaway < ActiveRecord::Migration[5.1]
  def change
    add_column :castaways, :voted_out, :boolean, default: false, null: false
  end
end
