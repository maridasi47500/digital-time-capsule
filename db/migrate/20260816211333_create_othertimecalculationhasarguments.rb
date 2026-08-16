class CreateOthertimecalculationhasarguments < ActiveRecord::Migration[8.1]
  def change
    create_table :othertimecalculationhasarguments do |t|
      t.references :argument, null: false, foreign_key: true
      t.string :value
      t.references :mytimecalculationhasothertimecalculation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
