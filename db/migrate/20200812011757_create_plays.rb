class CreatePlays < ActiveRecord::Migration[6.0]
  def change
    create_table :plays do |t|
      t.integer :camper_id
      t.integer :activity_id
      t.integer :time
      t.timestamps
    end
  end
end
