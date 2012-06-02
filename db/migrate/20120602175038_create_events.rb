class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :location
      t.datetime :start_time
      t.datetime :end_time
      t.integer :min_volunteers
      t.integer :max_volunteers
      t.string :commitment_type

      t.timestamps
    end
  end
end
