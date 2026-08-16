class CreateMytimecalculationhasothertimecalculations < ActiveRecord::Migration[8.1]
  def change
    create_table :mytimecalculationhasothertimecalculations do |t|
      t.references :mytimecalculation, null: false, foreign_key: true
      t.references :time_operation, null: false, foreign_key: true
      t.string :resultat

      t.timestamps
    end
  end
end
