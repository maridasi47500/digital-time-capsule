class AddEntreeToTimeOperation < ActiveRecord::Migration[8.1]
  def change
    create_table :arguments do |t|
      t.string :name
      t.string :type
      t.string :range_or_list

      t.timestamps
    end

    add_column :time_operations, :entree, :string
    add_column :time_operations, :resultat, :string
    add_reference :time_operations, :argument, foreign_key: true
  end
end
