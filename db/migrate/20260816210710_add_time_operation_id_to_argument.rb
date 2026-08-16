class AddTimeOperationIdToArgument < ActiveRecord::Migration[8.1]
  def change
    add_column :arguments, :time_operation_id, :string
  end
end
