class SchemaRenaming < ActiveRecord::Migration[5.1]
  def change
    rename_table :scoring_events, :scoring_criteria
    rename_column :scoring_criteria, :value, :points

    remove_index :points, %i(castaway_id episode_id scoring_event_id)
    rename_column :points, :scoring_event_id, :scoring_criterion_id
    rename_table :points, :scoring_events
    add_index(
      :scoring_events,
      %i(castaway_id episode_id scoring_criterion_id),
      name: "index_scoring_events_on_castaway_episode_scoring_criterion"
    )
  end
end
