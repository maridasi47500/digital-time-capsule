class CreateMytimecalculationHasArguments < ActiveRecord::Migration[8.1]
  def change
    create_table :mytimecalculation_has_arguments do |t|
      t.references :mytimecalculation, null: false, foreign_key: true
      t.references :argument_id, null: false, foreign_key: true
      t.string :my_value

      t.timestamps
    end
  end
end
