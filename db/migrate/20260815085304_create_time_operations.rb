class CreateTimeOperations < ActiveRecord::Migration[8.1]
  def change
    create_table :time_operations do |t|
      t.string :name

      t.timestamps
    end
  end
end
