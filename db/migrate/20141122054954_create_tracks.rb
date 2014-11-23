class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :tracknumber
      t.references :user, index: true

      t.timestamps
    end
  end
end
