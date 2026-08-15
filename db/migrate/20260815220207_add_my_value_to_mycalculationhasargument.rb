class AddMyValueToMycalculationhasargument < ActiveRecord::Migration[8.1]
  def change
    add_column :mycalculationhasarguments, :my_value, :string
  end
end
