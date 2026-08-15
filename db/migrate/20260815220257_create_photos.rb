class CreatePhotos < ActiveRecord::Migration[8.1]
  def change
    create_table :photos do |t|
      t.references :mytimecalculation, null: false, foreign_key: true
      t.string :pic
      t.string :description
      t.string :user_id

      t.timestamps
    end
  end
end
