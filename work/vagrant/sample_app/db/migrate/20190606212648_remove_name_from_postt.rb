class RemoveNameFromPostt < ActiveRecord::Migration[5.2]
  def change
    remove_column :postts, :name, :string
  end
end
