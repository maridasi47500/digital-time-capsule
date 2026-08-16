class CreateMyTimecalculationHasTimeOperations < ActiveRecord::Migration[8.1]
  def change
    create_table :my_timecalculation_has_time_operations do |t|
      t.references :time_operation, null: false, foreign_key: true
      t.references :mytimecalculation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
