class CreateMytimecalculations < ActiveRecord::Migration[8.1]
  def change
    create_table :mytimecalculations do |t|
      t.integer :user_id
      t.references :time_operation, null: false, foreign_key: true
      t.datetime :mydatetime
      t.string :resultat

      t.timestamps
    end
  end
end
