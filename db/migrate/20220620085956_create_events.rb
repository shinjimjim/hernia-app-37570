class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer    :pain_id,    null: false
      t.integer    :stretch_id
      t.integer    :training_id
      t.integer    :posture_id
      t.integer    :meal_id
      t.integer    :motion_id
      t.integer    :smoking_id
      t.text       :postscript
      t.datetime   :start_time
      t.timestamps
    end
  end
end
