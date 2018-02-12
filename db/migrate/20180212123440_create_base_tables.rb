class CreateBaseTables < ActiveRecord::Migration[5.1]
  def change
    enable_extension "pgcrypto"

    create_table :castaways, id: :uuid do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.timestamps
    end

    create_table :episodes, id: :uuid do |t|
      t.integer :number, null: false
      t.timestamps
    end

    create_table :scoring_events, id: :uuid do |t|
      t.string :name, null: false
      t.integer :value, null: false
      t.timestamps
    end

    create_table :points, id: :uuid do |t|
      t.uuid :castaway_id, null: false
      t.uuid :episode_id, null: false
      t.uuid :scoring_event_id, null: false
      t.integer :multiplier, default: 1, null: false
      t.timestamps
    end
    add_foreign_key :points, :castaways
    add_foreign_key :points, :episodes
    add_foreign_key :points, :scoring_events
    add_index :points, %i(castaway_id episode_id scoring_event_id), unique: true

    create_table :teams, id: :uuid do |t|
      t.string :owner_name, null: false
      t.string :name, null: false
      t.timestamps
    end

    create_table :memberships, id: :uuid do |t|
      t.uuid :castaway_id, null: false
      t.uuid :team_id, null: false
      t.timestamps
    end
    add_foreign_key :memberships, :castaways
    add_foreign_key :memberships, :teams
    add_index :memberships, %i(castaway_id team_id), unique: true
  end
end
