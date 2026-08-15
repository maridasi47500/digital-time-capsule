class CreateMycalculationhasarguments < ActiveRecord::Migration[8.1]
  def change
    create_table :mycalculationhasarguments do |t|
      t.references :mytimecalculation, null: false, foreign_key: true
      t.references :argument, null: false, foreign_key: true

      t.timestamps
    end
  end
end
